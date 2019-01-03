import 'package:flutter/material.dart';

import './courses.dart';
import './course_detail.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  CourseCard(this.course);

  @override
  Widget build(BuildContext context) {
    final courseImage = new Container(
      margin: new EdgeInsets.symmetric(vertical: 20.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(course.image),
        height: 60.0,
        width: 107.0,
      ),
    );

    final headerTextStyle = const TextStyle(
        fontFamily: 'PT Sans',
        color: Colors.redAccent,
        fontSize: 12.0,
        fontWeight: FontWeight.w700);

    final subHeaderTextStyle = const TextStyle(
        fontFamily: 'PT Sans',
        color: Colors.black,
        fontSize: 10.0,
        fontWeight: FontWeight.w400);

    final regularTextStyle = const TextStyle(
        fontFamily: 'PT Sans',
        color: Colors.black,
        fontSize: 9.0,
        fontWeight: FontWeight.w400);

    final courseContent = new Container(
      margin: new EdgeInsets.fromLTRB(55.0, 8.0, 2.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            course.name,
            style: headerTextStyle,
          ),
          new Container(height: 10.0),
          new Text(course.topics, style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff)),
          new Row(
            children: <Widget>[
              new Icon(Icons.access_time, size: 12.0, color: Colors.black),
              new Container(width: 8.0),
              new Text(
                course.duration,
                style: regularTextStyle,
              ),
              new Container(width: 24.0),
              new Icon(Icons.calendar_today, size: 12.0, color: Colors.black),
              new Container(width: 8.0),
              new Text(
                course.startdates,
                style: regularTextStyle,
              ),
            ],
          ),
        ],
      ),
    );

    final courseCard = new Container(
      child: courseContent,
      height: 120.0,
      margin: new EdgeInsets.only(left: 70, top: 20),
      decoration: new BoxDecoration(
          color: new Color(0xFFECEFF1),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0)),
    );

    return new GestureDetector(
        onTap: () => Navigator.of(context).push(new PageRouteBuilder(
              pageBuilder: (_, __, ___) => new CourseDetail(course),
            )),
        child: new Container(
          height: 160.0,
          margin: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          child: new Stack(
            children: <Widget>[courseCard, courseImage],
          ),
        ));
  }
}
