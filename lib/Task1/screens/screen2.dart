import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Task 2"),
          leading: Icon(Icons.menu),
        ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
                // width: double.infinity,
                width: screenWidth * 0.48,
                height: 400,
                child: const Center(
                  child: Text("Child 1", style: TextStyle(fontSize: 30, color: Colors.white),),
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                children: [
                  Container(
                    // width: 150,
                    width: screenWidth * 0.48,
                    height: 200,
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow,
                    ),
                    child: const Center(
                      child: Text("Child 2", style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    // width: 150,
                    width: screenWidth * 0.48,
                    height: 200,
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text("Child 3", style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}