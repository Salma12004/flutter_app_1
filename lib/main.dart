import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/screen1.dart';
import 'package:flutter_app_1/screens/screen2.dart';
import 'package:flutter_app_1/screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      // home:FirstScreen(),
      // home:SecondScreen(),
      home:ThirdScreen(),
    );
  }
}

