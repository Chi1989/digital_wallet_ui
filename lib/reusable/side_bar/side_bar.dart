
import 'package:flutter/material.dart';

import '../common/common.dart';



class Drawer2 extends StatelessWidget {
  const Drawer2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: whiteColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child:
          Text('Agbachi Chidiogo M', style: TextStyle(color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w400),
          ),
            decoration: BoxDecoration(
              color: darkBlue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: darkBlue,),
            title: Text('Profile', style: TextStyle(color: darkBlue),),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: darkBlue,),
            title: Text('Settings & Privacy', style: TextStyle(color: darkBlue),),
          ),
        ],
      ),
    );
  }
}