import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget {
  final double barHeight = 160.0;
  
  _launchURL() async {
    if (await canLaunch(course.apply)) {
      await launch(course.apply);
    } else {
      throw 'Could not launch page';
    }
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;
    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Column(
        children: <Widget>[
          new Text('Explore the Lambda School Curriculum',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w400,
                fontSize: 32.0)),
          new Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: new RaisedButton(
              color: Color(0xff00c6ff),
              child: Text('Timeline'),
              onPressed: () {
                Navigator.pushNamed(context, '/timeline');
              },
            )
          )
        ]
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
