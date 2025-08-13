import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Music")),
      body: Center(
        child: Text("Welcome to Music page!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
