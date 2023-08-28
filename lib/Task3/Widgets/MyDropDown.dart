import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  List<String> list=[];
  String dropdownValue;
  MyDropDown({super.key, required this.list, required this.dropdownValue});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DropdownButton<String>(
        value: widget.dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        onChanged: (String? newValue) {
          setState(() {
            widget.dropdownValue = newValue!;
          });
        },
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
        ).toList(),
      ),
    );
  }
}
