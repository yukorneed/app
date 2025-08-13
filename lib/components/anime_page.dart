import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anime")),
      body: Center(
        child: Text("Welcome to Anime page!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
