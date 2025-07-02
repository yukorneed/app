import 'package:flutter/material.dart';

class ClickAbleContainer extends StatefulWidget {
  const ClickAbleContainer({super.key});

  @override
  State<ClickAbleContainer> createState() => _ClickAbleContainerState();
}

class _ClickAbleContainerState extends State<ClickAbleContainer> {
  int _variable = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () {
    setState(() {
      _variable++;
    });
    
  },
  child: Container(
    height: 50,
    width: 50,
    color: Colors.red,
    child: Center(
      child: Text('$_variable'),
    ),
  ),
);

  }
}