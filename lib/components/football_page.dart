import 'package:flutter/material.dart';

class FootballPage extends StatefulWidget {
  @override
  State<FootballPage> createState() => _FootballPageState();
}

class _FootballPageState extends State<FootballPage> {
  @override
  Widget build(BuildContext context) {
    double imageSize = 160;

    return Scaffold(
      appBar: AppBar(
        title: Text("Football"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 150,
                  child: Image.asset(
                    "assets/images/football_main.jpg",
                    fit: BoxFit.contain, // Бүтэн зураг харуулах
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Top forward players of all time",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: imageSize + 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildPlayerCard("assets/images/football1.jpg", "Cristiano Ronaldo", imageSize),
                buildPlayerCard("assets/images/football2.jpg", "Lionel Messi", imageSize),
                buildPlayerCard("assets/images/football3.jpg", "Player 3", imageSize),
                buildPlayerCard("assets/images/football4.jpg", "Player 4", imageSize),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPlayerCard(String imagePath, String name, double size) {
    return Container(
      width: size,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: size,
            height: size,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain, // Бүтэн зураг
            ),
          ),
          SizedBox(height: 5),
          Text(name, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

