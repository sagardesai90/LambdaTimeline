import 'package:flutter/material.dart';

import './data_course_card.dart';
import './data_courses.dart';

class DataTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DataTimelineChild();
  }
}

class DataTimelineChild extends StatelessWidget {
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
                          new DataCourseCard(datacourses[index]),
                      itemCount: datacourses.length,
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
