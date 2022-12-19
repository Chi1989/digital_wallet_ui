import 'package:digital_wallet_ui/reusable/common/common.dart';
import 'package:digital_wallet_ui/reusable/credit_cards/credit_cards.dart';
import 'package:digital_wallet_ui/reusable/side_bar/side_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> countries = ["Local Transfers", "Airtime/Data", "Open Account", "Bill payment", "BVN", "Request for ATM"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer2(),
      body: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                Container(
                  height: 370,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50))
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    width: 900,
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        CreditCard(number: 9290, valid: 'VALID 20/24', image: 'mastercard.png', color: lightBlue),
                        CreditCard(number: 9290, valid: 'VALID 20/24', image: 'visa.png', color: darkBlue),
                        CreditCard(number: 9290, valid: 'VALID 20/24', image: 'mastercard.png', color: lightBlue),
                        CreditCard(number: 9290, valid: 'VALID 20/24', image: 'visa.png', color: darkBlue),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(
                          builder: (context) => Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.filter_list, color: Colors.blueAccent,),
                                    onPressed: () => Scaffold.of(context).openDrawer(),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),
                      Text('Good Day,', style: TextStyle(color: lightBlue, fontSize: 22, fontWeight: FontWeight.w900),),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Melvis Chi', style: TextStyle(color: darkBlue, fontSize: 22, fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 15.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.lightBlue,
                                offset: Offset(3, 7),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(' Balance \n \$444', style: TextStyle(color: darkBlue, fontSize: 22, fontWeight: FontWeight.w800
                            ),
                            ),
                          ),
                          height: 70.0,
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Services', style: TextStyle(color: darkBlue, fontSize: 22, fontWeight: FontWeight.w800
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:Row(
                          children: countries.map((country){
                            return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100, width:150,
                                  alignment: Alignment.center,
                                  child: Text(country, style: TextStyle(color: Colors.white),),
                                  decoration: BoxDecoration(
                                    color: darkBlue,
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: lightBlue,
                                        offset: Offset(3, 7),
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                )
                            );
                          }).toList(),
                        )
                    ),
                  )
                ],
              ),
            )
          ]
      ),

    );
  }
}


