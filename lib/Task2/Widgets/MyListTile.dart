import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  String title;
  String subtitle;
  String number;
  
  MyListTile({super.key,required this.title, required this.subtitle, required this.number});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(number, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),),
          )
        ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400, fontSize: 15),),
    );
  }
}