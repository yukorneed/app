import 'package:flutter/material.dart';

class InputFieldComp extends StatefulWidget {
  const InputFieldComp({super.key});

  @override
  State<InputFieldComp> createState() => _InputFieldCompState();
}

class _InputFieldCompState extends State<InputFieldComp> {
  String _input = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'data',
      ),
      onChanged: (value) {
        setState(() {
          _input = value;
        });
        print(_input);
      },
    );
  }
}
