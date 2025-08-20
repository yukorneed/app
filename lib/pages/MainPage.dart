import 'package:app/pages/auth.dart';
import 'package:app/pages/category.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/search.dart';
import 'package:app/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    SettingsPage(),
    CategoryPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home Page';
      case 1:
        return 'Search Page';
      case 2:
        return 'Settings Page';
      case 3:
        return 'Category Page';
      default:
        return '';
    }
  }
 
 Future<void> logout() async{

 SharedPreferences prefs = await SharedPreferences.getInstance();
 await prefs.remove('token');
  Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => auth()),
                      );

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Main page'),
        actions: [
          ElevatedButton(onPressed: logout, child: Text('Log out'))
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
        ],
      ),
    );
  }
}