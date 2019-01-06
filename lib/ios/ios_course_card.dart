import 'package:flutter/material.dart';

import './ios_courses.dart';

class IosCourseCard extends StatelessWidget {
  final IosCourse ioscourse;
  IosCourseCard(this.ioscourse);

  @override
  Widget build(BuildContext context) {
    final courseImage = new Container(
      margin: new EdgeInsets.only(top: 30.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(ioscourse.image),
        height: 60.0,
        width: 107.0,
      ),
    );

    final headerTextStyle = const TextStyle(
        fontFamily: 'PT Sans',
        color: Colors.redAccent,
        fontSize: 14.0,
        fontWeight: FontWeight.w700);

    final subHeaderTextStyle = const TextStyle(
        fontFamily: 'PT Sans',
        color: Colors.black,
        fontSize: 11.0,
        fontWeight: FontWeight.w400);

    final regularTextStyle = const TextStyle(
        fontFamily: 'PT Sans',
        color: Colors.black,
        fontSize: 12.0,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w400);

    final courseContent = new Container(
      margin: new EdgeInsets.fromLTRB(55.0, 0.0, 2.0, 0.0),
      padding: new EdgeInsets.only(top: 35.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            ioscourse.duration,
            style: regularTextStyle,
          ),
          new Container(height: 4.0),
          new Text(
            ioscourse.name,
            style: headerTextStyle,
          ),
          new Container(height: 2.0),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff)),
          new Text(ioscourse.topics, style: subHeaderTextStyle),
        ],
      ),
    );

    final courseCard = new Container(
      child: courseContent,
      height: 140.0,
      margin: new EdgeInsets.only(left: 70.0),
      decoration: new BoxDecoration(
          color: new Color(0xFFECEFF1),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0)),
    );

    return new GestureDetector(
        onTap: () => {},
        child: new Container(
          height: 140.0,
          margin: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: new Stack(
            children: <Widget>[courseCard, courseImage],
          ),
        ));
  }
}
