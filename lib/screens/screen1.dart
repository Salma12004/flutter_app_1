import 'package:flutter/material.dart';

class FirstScreen
 extends StatelessWidget{
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: 
        AppBar(
          backgroundColor: Colors.green,
          title: Text("Task 1"),
          leading: Icon(Icons.menu),
        ),
      body:Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Container(
                // margin: const EdgeInsets.all(40),
                width: 150,
                height:200,
                color: Colors.red,
              ),
              Spacer(),
              Container(
                width: 150,
                height:200,
                color: Colors.yellow,
              ),
              SizedBox(width: 30,),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Container(
                width: 150,
                height:200,
                color: Colors.blue,
              ),
              Spacer(),
              Container(
                width: 150,
                height:200,
                color: Colors.purple,
              ),
              SizedBox(width: 30,),
            ],
          ),
          SizedBox(height: 20,),
        ],
      ) 
    );
  }
}