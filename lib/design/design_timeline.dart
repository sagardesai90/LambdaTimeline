import 'package:flutter/material.dart';

import './design_course_card.dart';
import './design_courses.dart';

class DesignTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DesignTimelineChild();
  }
}

class DesignTimelineChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
          constraints: new BoxConstraints.expand(),
          padding: EdgeInsets.only(top: 20.0),
          color: new Color(0xFFECEFF1),
          child: Stack(
            children: <Widget>[
              new Container(
                  child: new ListView.builder(
                      itemBuilder: (context, index) =>
                          new DesignCourseCard(designcourses[index]),
                      itemCount: designcourses.length,
                      padding: new EdgeInsets.symmetric(vertical: 10.0))),
              new BackButton(color: Colors.black),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff00c6ff),
        onPressed: () => Navigator.pushNamed(context, "/lambdalove"),
        child: Text('❤️', style: TextStyle(fontSize: 24.0)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
