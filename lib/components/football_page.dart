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
                    fit: BoxFit.cover,
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
                Container(
                  width: imageSize,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/football1.jpg",
                        width: imageSize,
                        height: imageSize,
                        
                      ),
                      SizedBox(height: 5),
                      Text("Cristiano Ronaldo", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: imageSize,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/football2.jpg",
                        width: imageSize,
                        height: imageSize,
                        
                      ),
                      SizedBox(height: 5),
                      Text("Lionel Messi", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: imageSize,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/football3.jpg",
                        width: imageSize,
                        height: imageSize,
                        
                      ),
                      SizedBox(height: 5),
                      Text("Player 3", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: imageSize,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/football4.jpg",
                        width: imageSize,
                        height: imageSize,
                        
                      ),
                      SizedBox(height: 5),
                      Text("Player 4", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
