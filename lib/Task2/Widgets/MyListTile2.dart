import 'package:flutter/material.dart';

class MyListTile2 extends StatelessWidget {
  String title;
  String subtitle;
  String trailing;
  MyListTile2({super.key, required this.title, required this.subtitle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person, color: Colors.white, size: 40,),
              radius: 40,
            ),
            title: Text(title, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
            subtitle: Text(subtitle, style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.w900, fontSize: 15),),
            trailing: Text(trailing, style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.w900, fontSize: 15),),
          ),
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: screenWidth * 0.15,
          endIndent: screenWidth * 0.15,
        )
      ],
    );
  }
}