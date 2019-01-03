import 'package:flutter/material.dart';

class AndroidPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text('Android timeline'),
        ),
        body: Center(child: Text('You are viewing the Android timeline')));
  }
}
