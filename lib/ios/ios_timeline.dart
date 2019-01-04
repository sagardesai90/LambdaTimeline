import 'package:flutter/material.dart';

import './ios_course_card.dart';
import './ios_courses.dart';

class IosTimeline extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: new Container(
//             constraints: new BoxConstraints.expand(),
//             padding: EdgeInsets.only(top: 20.0),
//             color: new Color(0xFFECEFF1),
//             child: new Stack(children: <Widget>[
//               new BackButton(color: Colors.black),
//             ])));
//   }
// }

// class CourseMain extends StatelessWidget {
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
                            new IosCourseCard(ioscourses[index]),
                        itemCount: ioscourses.length,
                        padding: new EdgeInsets.symmetric(vertical: 10.0))),
                new BackButton(color: Colors.black),
              ],
            )));
  }
}
