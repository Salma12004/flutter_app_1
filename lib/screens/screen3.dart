import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.black87,
      // appBar: AppBar(
      //     backgroundColor: Colors.green,
      //     title: Text("Task 2"),
      //     leading: Icon(Icons.menu),
      //   ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(padding: EdgeInsets.all(10)),
          Text("Menu", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Hot Drinks ", style: TextStyle(fontSize: 30, color: Colors.orange.shade900, fontWeight: FontWeight.w600),),
              Text(" Partition", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.normal),),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: screenHeight*0.2,
            width: screenWidth*0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('coffee-cup.jpg'),
              ],
            )
          ),
        ],
      )
    );
  }
}