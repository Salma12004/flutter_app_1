import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  String answer;
  String text;
  Function(String?) onChanged;
  MyRadio({super.key, required this.answer, required this.text, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
      title: Text(text),
      value: text,
      groupValue: answer,
      onChanged:onChanged,
    );
  }
}