import 'package:flutter/material.dart';

class IosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text('iOS timeline'),
        ),
        body: Center(child: Text('You are viewing the iOS timeline')));
  }
}
