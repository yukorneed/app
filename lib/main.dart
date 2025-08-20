import 'package:app/pages/auth.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/search.dart';
import 'package:app/pages/settings.dart';
import 'package:app/pages/category.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: auth(),
    );
  }
}






