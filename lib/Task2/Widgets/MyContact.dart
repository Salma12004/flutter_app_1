import 'package:flutter/material.dart';
import 'MyListTile.dart';

class MyContact extends StatelessWidget {
  String title;
  String subtitle;
  String number;

  MyContact({super.key, required this.title, required this.subtitle, required this.number});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children:[
        MyListTile(title: title, subtitle: subtitle, number: number,),
        Divider(
          color: Colors.grey,
          indent: screenWidth * 0.2,
          endIndent: screenWidth * 0.2,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.call, color: Colors.black, size: 25,),
              Icon(Icons.edit, color: Colors.green, size: 25,),
              Icon(Icons.delete, color: Colors.red, size: 25,),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ), 
      ]
    );
  }
}