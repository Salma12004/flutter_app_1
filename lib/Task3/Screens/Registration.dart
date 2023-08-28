import 'package:flutter/material.dart';
import 'package:flutter_app_1/Task3/Widgets/MyTextField.dart';
import '../Widgets/MyDropDown.dart';

// *Registration Page
// -Create a registration page with the following:
// -Header saying "Register"
// -Email input field
// -Password input field
// -Confirm Password input field
// -Phone

// input field
// -Gender, Grade and University dropdown list
// -Register button
// -Link saying "Have an account? Log in"

List<String> genderList = <String>['male', 'female'];
List<String> uniList = <String>[
  'Ain Shams University',
  'Alexandria University',
  'Al-Azhar University',
  'Assiut University',
  'Benha University',
  'Beni-Suef University',
  'Cairo University',
];
List<String> gradeList = <String>[
  '1st Grade',
  '2nd Grade',
  '3rd Grade',
  '4th Grade',
  '5th Grade',
];

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
  String dropDownGender = genderList.first;
  String dropDownUni = uniList.first;
  String dropDownGrade = gradeList.first;
  GlobalKey<FormState> formkey=GlobalKey<FormState>();
  final RegExp emailRegExp =RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+.[a-zA-Z]+');
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
      ),
      body: Column(children: [
        Form(
          key: formkey,
          child: Column(
          children: [
            MyTextField(isObscure: false, label: "Email",validator: (String? value){
              if(value!.isEmpty){
                return "Email is required";
              }
              if(!emailRegExp.hasMatch(value)){
                return "Email is not valid";
              }
              return null;
            }, controller: emailController,),
            MyTextField(isObscure: true, label: "Password", validator: (String? value){
              if(value!.isEmpty){
                return "Password is required";
              }
              if(value.length < 8){
                return "Password must be at least 8 characters";
              }
              return null;
            }, controller: passwordController,),
            MyTextField(isObscure: true, label: "Confirm Password", validator: (String? value){
              if(value!.isEmpty){
                return "Password is required";
              }
              if(value.length < 8){
                return "Password must be at least 8 characters";
              }
              if(value != passwordController.text){
                return "Passwords don't match";
              }
              return null;
            }, controller: confirmPasswordController,),
            MyTextField(isObscure: false, label: "Phone", validator: (String? value){
              if(value!.isEmpty){
                return "Phone is required";
              }
              if(value.length != 11){
                return "Phone must be 11 digits";
              }
              return null;
            }, controller: phoneController,),
          ],
        )),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyDropDown(list: genderList, dropdownValue: genderList.first),
            MyDropDown(list: gradeList, dropdownValue: gradeList.first),
            MyDropDown(list: uniList, dropdownValue: uniList.first),
          ],
        ),
        Spacer(),
        ElevatedButton(onPressed: () {
          if(formkey.currentState!.validate()){
            Navigator.pushNamed(context, '/login');
          }
        }, child: Text("Sign Up")),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text("Have an account? Log in")),
      ]),
    );
  }
}
