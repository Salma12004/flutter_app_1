import 'package:flutter/material.dart';
import '../Widgets/MyTextField.dart';

// -Header saying "Login"
// -Email input field
// -Password input field
// -Login button
// -Link saying "Forgot Password?"

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  GlobalKey<FormState> formkey=GlobalKey<FormState>();
  final RegExp emailRegExp =RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+.[a-zA-Z]+');
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body:
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/home');
                  }
                },
                child: const Text('Login'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgotPassword');
              },
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}