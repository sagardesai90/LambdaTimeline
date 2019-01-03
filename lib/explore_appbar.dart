import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget {
  final double barHeight = 160.0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(30.0),
      height: barHeight,
      child: new Center(
        child: new Text('Explore the Lambda School Curriculum',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w400,
                fontSize: 32.0)),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xFFF44336),
            const Color(0xFFB71C1C),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          tileMode: TileMode.clamp
        ),
      ),
    );
  }
}
