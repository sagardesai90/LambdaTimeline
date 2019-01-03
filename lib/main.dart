import 'package:flutter/material.dart';

import './explore_appbar.dart';
import './course_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: Scaffold(
            body: new Column(
          children: <Widget>[new ExploreAppBar(), new CourseMain()],
        )));
  }
}