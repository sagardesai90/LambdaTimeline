import 'package:flutter/material.dart';

import './courses.dart';

class TimelineItems extends StatelessWidget {
  final Subtopics subtopic;
  TimelineItems(this.subtopic);
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        child: new Stack(
          children: <Widget>[
            _getContent()
          ],
        )
      )
    );
  }

  // Widget _getContent() {
  //   return new ListView(
  //     children: <Widget>[
  //       new 
  //     ],
  //   )
  // }
}