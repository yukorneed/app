import 'package:app/components/click_able_container.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final int _variable1 = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
        backgroundColor: Colors.amberAccent,
      ),
      body: GridView.count(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10,
      children: [
        Container(
          width: 60,
          height: 60,
          color: Colors.red,
          child: Text('data'),
        ),
         Container(
          width: 60,
          height: 60,
          color: Colors.red,
          child: Text('data'),
        ),
         Container(
          width: 60,
          height: 60,
          color: Colors.red,
          child: Text('data'),
        ),
         Container(
          width: 60,
          height: 60,
          color: Colors.red,
          child: Text('data'),
        ),
      ],
      )
    );
  }
  
}



