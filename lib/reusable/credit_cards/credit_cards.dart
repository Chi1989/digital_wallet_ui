
import 'package:flutter/material.dart';

import '../common/common.dart';

class CreditCard extends StatelessWidget {
  final int number;
  final String valid;
  final String image;
  final Color color;

  const CreditCard({super.key, required this.number, required this.valid, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 190,
        width: 300,
        decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              color: lightBlue,
              offset: Offset(3, 7),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/$image', width: 50,),
                  ),
                  Icon(Icons.more_vert, color: Colors.white,)
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(children: [
                    TextSpan(text: 'Melvis Chi\n', style: TextStyle(fontSize: 22, color: Colors.grey),),
                    TextSpan(text: '**** **** **** ${number.toString()}\n', style: TextStyle(fontSize: 22),),
                    TextSpan(text: valid, style: TextStyle(fontSize: 14, color: Colors.white60, fontWeight: FontWeight.w300,
                    ),
                    ),
                  ]
                  )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
