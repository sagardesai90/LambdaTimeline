import 'package:flutter/material.dart';

class LambdaLove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          width: 380.0,
          child: OverflowBox(
            minWidth: 0.0,
            minHeight: 0.0,
            maxHeight: double.infinity,
            child: Image(
              image: new AssetImage('assets/images/lambdalove.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new BackButton(color: Colors.black),
      ],
    ));
  }
}
