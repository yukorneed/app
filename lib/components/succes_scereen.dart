import 'package:flutter/material.dart';

class SuccesScereen extends StatelessWidget {
  //const SuccesScereen({super.key});
   final String name;
  final String email;
  final String age;
  final String weight;
  final String height;

  SuccesScereen({ required this.name,required this.email,required this.weight,required this.age,required this.height});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('succes')),
      body: Center(
        child: Column(
          children: [
            Text('$name'),
            Text('$email'),
            Text('$age'),
            Text('$weight'),
            Text('$height')
          ],
        ),
      ),
    );
  }
}
