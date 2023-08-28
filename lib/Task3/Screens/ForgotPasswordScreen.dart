import 'package:flutter/material.dart';
import '../Widgets/MyTextField.dart';

// *Forgot Password Page
// -Header saying "Reset Password"
// -Email input field
// -Submit button

class ForgotPasswordScreen extends StatelessWidget {
  GlobalKey<FormState> formkey=GlobalKey<FormState>();
  final RegExp emailRegExp =RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+.[a-zA-Z]+');
  TextEditingController emailController = TextEditingController();
  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/login');
                  }
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