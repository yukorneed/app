import 'package:app/pages/home.dart';
import 'package:app/pages/search.dart';
import 'package:app/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  int _currentPage= 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(),
      SearchPage(),
      SettingsPage()
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      //body: pages[_currentPage],
      body: IndexedStack(
        index: _currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        currentIndex: _currentPage,
        onTap: (index) => setState(() => _currentPage = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
    );
  }
  
}