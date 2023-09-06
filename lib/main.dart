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

// import 'package:flutter/material.dart';
// import 'Task2/Screens/Screen1.dart';
// import 'Task2/Screens/Screen2.dart';

// //if you want to run the first screen uncomment the home: FirstScreen(), and comment the home: SecondScreen(),
// //this is for the task of the session 2
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "MyApp",
//       theme: ThemeData(
//         useMaterial3: true
//       ),
//       // home: FirstScreen(),
//       home: SecondScreen(),

//     );
//   }
// }

//////////////////////////////////////////////////Task3////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';
// import 'package:flutter_app_1/Task3/Screens/ForgotPasswordScreen.dart';
// import 'package:flutter_app_1/Task3/Screens/HomeScreen.dart';
// import 'package:flutter_app_1/Task3/Screens/LoginScreen.dart';
// import 'Task3/Screens/Registration.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "MyApp",
//       theme: ThemeData(
//         useMaterial3: true
//       ),
//       routes: {
//         '/': (context) => RegistrationScreen(),
//         '/login': (context) => LoginScreen(),
//         '/forgotPassword': (context) => ForgotPasswordScreen(),
//         '/home': (context) => const HomeScreen(),
//       }
//     );
//   }
// }


//////////////////////////////////////////////////Task4////////////////////////////////////////////////////////



import 'package:flutter/material.dart';
import 'package:flutter_app_1/Task4/Screens/HomeScreen.dart';
import 'package:provider/provider.dart';
import 'Task4/Providers/ToDoProvider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ToDoProvider()),
      ],
      child: Consumer<ToDoProvider>(
        builder: (context, provider, child) => const MaterialApp(
          home:HomeScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}


//////////////////////////////////////////////////Task5////////////////////////////////////////////////////////