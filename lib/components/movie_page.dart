import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie")),
      body: Center(
        child: Text("Welcome to Movie page!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
