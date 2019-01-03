import 'package:flutter/material.dart';

import './main_menu/main_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: Scaffold(
            body: MainMenu(),
            bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.school), title: Text('Apply to Lambda')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.thumb_up), title: Text('Spread the love')),
              ],
            )));
  }
}
