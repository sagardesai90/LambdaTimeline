import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './courses.dart';
import './course_card.dart';

class CourseDetail extends StatelessWidget {
  final Course course;

  CourseDetail(this.course);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      constraints: new BoxConstraints.expand(),
      color: new Color(0xFFC62828),
      padding: EdgeInsets.only(top: 20.0),
      child: new Stack(
        children: <Widget>[
          _getGradient(),
          _getContent(),
          // _getToolbar(context),
          // ],
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: <Widget>[
          // new Text(course.name),
          // new Image.asset(course.image),
          new BackButton(color: Colors.white),
        ],
      ),
    )

        // new Center(
        //   child:
        // ),
        );
  }

  _launchURL() async {
    if (await canLaunch(course.apply)) {
      await launch(course.apply);
    } else {
      throw 'Could not launch page';
    }
  }

  Container _getGradient() {
    return new Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
          const Color(0xFFF44336),
          const Color(0xFFB71C1C),
        ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 1.0),
                tileMode: TileMode.clamp)));
  }

  Widget _getContent() {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 40.0),
      children: <Widget>[
        new CourseCard(course),
        new Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: new Column(
              children: <Widget>[
                new Text(course.description,
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: new RaisedButton(
                    color: Color(0xff00c6ff),
                    child: Text('APPLY TODAY'),
                    onPressed: () {
                      _launchURL();
                    },
                  ),
                )
              ],
            )),
      ],
    );
  }
}
