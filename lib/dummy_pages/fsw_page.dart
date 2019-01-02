import 'package:flutter/material.dart';

class FullStackWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Full Stack Web timeline'),
        ),
        body:
            Center(child: Text('You are viewing the Full Stack Web timeline')));
  }
}
