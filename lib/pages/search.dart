import 'package:app/components/click_able_container.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
 final int _variable = 0;
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
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClickAbleContainer(),
            Row(
              children: [
                Container(height: 50, width: 50, child: Center(child: Text('$_variable1')),color: Colors.red,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
