import 'package:flutter/material.dart';
import 'package:flutter_app_1/Task3/Widgets/MyRadio.dart';

// *Home Page
// - 5 Question text
// - 4 multiple choice options as radio buttons
// -Submit All Answers button
// -Display snackbar on submit with grade and reset answers

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String answer1 = '';
  String answer2 = '';
  String answer3 = '';
  String answer4 = '';
  String answer5 = '';

  int calculateGrade(){
    int grade = 0;
    if(answer1 == 'Cairo'){
      grade++;
    }
    if(answer2 == 'Paris'){
      grade++;
    }
    if(answer3 == 'Berlin'){
      grade++;
    }
    if(answer4 == 'Rome'){
      grade++;
    }
    if(answer5 == 'Madrid'){
      grade++;
    }
    return grade;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Text('1. What is the capital of Egypt?', style: TextStyle(fontSize: 20,color: Colors.indigo[300], fontWeight: FontWeight.w600),),
            MyRadio(answer: answer1, text: 'Cairo', onChanged: (String? value) {
              setState(() {
                answer1 = value!;});
            },),
            MyRadio(answer: answer1, text: 'Alex', onChanged: (String? value) {
              setState(() {
                answer1 = value!;
              });
            },),
            MyRadio(answer: answer1, text: 'Giza', onChanged: (String? value) {
              setState(() {
                answer1 = value!;
              });
            },),
            MyRadio(answer: answer1, text: 'Luxor', onChanged: (String? value) {
              setState(() {
                answer1 = value!;
              });
            },),
            Text('2. What is the capital of France?', style: TextStyle(fontSize: 20,color: Colors.indigo[300], fontWeight: FontWeight.w600),),
            MyRadio(answer: answer2, text: 'Paris', onChanged: (String? value) {
              setState(() {
                answer2 = value!;
              });
            },),
            MyRadio(answer: answer2, text: 'Marseille', onChanged: (String? value) {
              setState(() {
                answer2 = value!;
              });
            },),
            MyRadio(answer: answer2, text: 'Lyon', onChanged: (String? value) {
              setState(() {
                answer2 = value!;
              });
            },),
            MyRadio(answer: answer2, text: 'Toulouse', onChanged: (String? value) {
              setState(() {
                answer2 = value!;
              });
            },),
            Text('3. What is the capital of Germany?', style: TextStyle(fontSize: 20,color: Colors.indigo[300], fontWeight: FontWeight.w600),),
            MyRadio(answer: answer3, text: 'Berlin', onChanged: (String? value) {
              setState(() {
                answer3 = value!;
              });
            },),
            MyRadio(answer: answer3, text: 'Hamburg', onChanged: (String? value) {
              setState(() {
                answer3 = value!;
              });
            },),
            MyRadio(answer: answer3, text: 'Munich', onChanged: (String? value) {
              setState(() {
                answer3 = value!;
              });
            },),
            MyRadio(answer: answer3, text: 'Cologne', onChanged: (String? value) {
              setState(() {
                answer3 = value!;
              });
            },),
            Text('4. What is the capital of Italy?', style: TextStyle(fontSize: 20,color: Colors.indigo[300], fontWeight: FontWeight.w600),),
            MyRadio(answer: answer4, text: 'Rome', onChanged: (String? value) {
              setState(() {
                answer4 = value!;
              });
            },),
            MyRadio(answer: answer4, text: 'Milan', onChanged: (String? value) {
              setState(() {
                answer4 = value!;
              });
            },),
            MyRadio(answer: answer4, text: 'Naples', onChanged: (String? value) {
              setState(() {
                answer4 = value!;
              });
            },),
            MyRadio(answer: answer4, text: 'Turin', onChanged: (String? value) {
              setState(() {
                answer4 = value!;
              });
            },),
            Text('5. What is the capital of Spain?', style: TextStyle(fontSize: 20,color: Colors.indigo[300], fontWeight: FontWeight.w600),),
            MyRadio(answer: answer5, text: 'Madrid', onChanged: (String? value) {
              setState(() {
                answer5 = value!;
              });
            },),
            MyRadio(answer: answer5, text: 'Barcelona', onChanged: (String? value) {
              setState(() {
                answer5 = value!;
              });
            },),
            MyRadio(answer: answer5, text: 'Valencia', onChanged: (String? value) {
              setState(() {
                answer5 = value!;
              });
            },),
            MyRadio(answer: answer5, text: 'Seville', onChanged: (String? value) {
              setState(() {
                answer5 = value!;
              });
            },),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('Your grade is: ' + calculateGrade().toString()+ '/5'),
                    action: SnackBarAction(
                      label: 'Reset',
                      onPressed: () {
                        setState(() {
                          answer1 = '';
                          answer2 = '';
                          answer3 = '';
                          answer4 = '';
                          answer5 = '';
                        });
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

