// ////////////////////////////////////////////////Task1////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';
// import 'Task1/screens/screen1.dart';
// import 'Task1/screens/screen2.dart';
// import 'Task1/screens/screen3.dart';

//// if you want to run the first screen uncomment the home: FirstScreen(), and comment the home: SecondScreen(),
//// this is for the task of the session 1

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "MyApp",
//       // home:FirstScreen(),
//       // home:SecondScreen(),
//       home:ThirdScreen(),
//     );
//   }
// }

//////////////////////////////////////////////////Task2////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'Task2/Screens/Screen1.dart';
import 'Task2/Screens/Screen2.dart';

//if you want to run the first screen uncomment the home: FirstScreen(), and comment the home: SecondScreen(),
//this is for the task of the session 2
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      theme: ThemeData(
        useMaterial3: true
      ),
      // home: FirstScreen(),
      home: SecondScreen(),

    );
  }
}