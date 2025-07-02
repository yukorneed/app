import 'package:app/components/click_able_container.dart';
import 'package:flutter/material.dart';

import 'input_field_comp.dart'; // Хэрэв InputFieldComp өөр файлд байвал импорт хийхээ мартуузай

class SearchPage extends StatelessWidget {
  final int _variable1 = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClickAbleContainer(),
            SizedBox(width: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
              child: Center(child: Text('$_variable1')),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 200,
              child: InputFieldComp(),
            ),
          ],
        ),
      ),
    );
  }
}



