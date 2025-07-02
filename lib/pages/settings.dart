import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _counter = 0;
   void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementcounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('settings'),
        backgroundColor: Colors.redAccent,
      ),
     
       body:Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           spacing: 10,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('settings : '),
                 Text('$_counter'),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ElevatedButton(onPressed: _incrementCounter, child: Icon(Icons.add_moderator_sharp)),
                  ElevatedButton(onPressed: _decrementcounter, child: Icon(Icons.add_moderator_outlined))
               ],
             )
            
           ],
         ),
     
          

         ),
      );
        
      
    
  }
}