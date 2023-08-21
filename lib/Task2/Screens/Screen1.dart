import 'package:flutter/material.dart';
import '../Widgets/MyContact.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  List<MyContact> data=[
    MyContact(title: "Sara Mohammed", subtitle: "01141114791", number: "1"),
    MyContact(title: "Shaimaa Mohammed", subtitle: "01141114792", number: "2"),
    MyContact(title: "Alaa Mohammed", subtitle: "01141114793", number: "3"),
    MyContact(title: "Noha Mohammed", subtitle: "01141114794", number: "4"),
    MyContact(title: "Nada Mohammed", subtitle: "01141114795", number: "5"),
    MyContact(title: "Aya Mohammed", subtitle: "01141114796", number: "6"),
    MyContact(title: "Salma Mohammed", subtitle: "01141114797", number: "7"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Contacts", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30),),
        actions: [
          Icon(Icons.add, color: Colors.white, size: 30,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              itemBuilder: (context,index)=>MyContact(title: data[index].title, subtitle: data[index].subtitle, number: data[index].number),
              itemCount: data.length,
              ),
            ),
          ],
        ),
      )
    );
  }
}