import 'package:flutter/material.dart';
import '../components/football_page.dart';
import '../components/music_page.dart';
import '../components/movie_page.dart';
import '../components/anime_page.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FootballPage()),
              );
            },
            child: Container(
              color: Colors.red,
              child: Center(
                child: Icon(Icons.sports_soccer, size: 50, color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MusicPage()),
              );
            },
            child: Container(
              color: Colors.green,
              child: Center(
                child: Icon(Icons.music_note, size: 50, color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MoviePage()),
              );
            },
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Icon(Icons.movie, size: 50, color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AnimePage()),
              );
            },
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Icon(Icons.tv, size: 50, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




