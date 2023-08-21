import 'package:flutter/material.dart';
import 'package:flutter_app_1/Task2/Widgets/MyListTile2.dart';


class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  List<MyListTile2> data=[
    MyListTile2(title: "Omar", subtitle: "Are you coming tomorrow", trailing: "12:00 AM"),
    MyListTile2(title: "Salma",subtitle: "Hi there", trailing: "11:09 PM"),
    MyListTile2(title: "Youssef", subtitle: "Hello", trailing: "6:00 AM"),
    MyListTile2(title: "Judy",subtitle: "I will be home at 3 PM do...", trailing: "11:00 AM"),
    MyListTile2(title: "Ali", subtitle: "could you send me the...", trailing: "5:30 AM"),
    MyListTile2(title: "Asia",subtitle: "okay", trailing: "4:00 PM"),
    MyListTile2(title: "Mama", subtitle: "Where are you sweetie", trailing: "12:00 AM"),
    MyListTile2(title: "Ahmed",subtitle: "I will be late", trailing: "8:09 PM"),
    MyListTile2(title: "Sara", subtitle: "I am fine", trailing: "6:00 AM"),
    MyListTile2(title: "Noha",subtitle: "I am busy", trailing: "5:46 AM"),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: const Text("WhatsApp", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),),
        actions: [
          Icon(Icons.search, color: Colors.white, size: 30,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert, color: Colors.white, size: 30,),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.teal[700],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Icon(Icons.camera_alt, color: Colors.grey, size: 30,),
                  Text("CHATS", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),),
                  Text("STATUS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 20),),
                  Text("CALLS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 20),),  
                ]
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: screenWidth *0.17,
                height: 3,
                color: Colors.teal[700],
              ),
              Container(
                width: screenWidth* 0.29,
                height: 3,
                color: Colors.white,
              ),
              Container(
                width: screenWidth* 0.54,
                height: 3,
                color: Colors.teal[700],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index)=>MyListTile2(title: data[index].title, subtitle: data[index].subtitle, trailing: data[index].trailing),
              itemCount: data.length,
              shrinkWrap: true,
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Text("Tap and hold on chat for more options    ", style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.w900, fontSize: 15),),
              FloatingActionButton(onPressed: (){}, child: Icon(Icons.message, color: Colors.white,), backgroundColor: Colors.teal[700],),
            ]
          )
        ],
      ),
    );
  }
}