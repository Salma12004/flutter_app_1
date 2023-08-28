import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  bool isObscure ;
  String label;
  String? Function(String?)? validator;
  TextEditingController controller;

  MyTextField({super.key,required this.isObscure,required this.label, this.validator , required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        obscureText: isObscure,
        validator: validator,
      ),
    );
  }
}