import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './ios_courses.dart';
import './ios_course_card.dart';
// import './ios/ios_timeline.dart';

class IosCourseDetail extends StatelessWidget {
  final IosCourse ioscourse;

  IosCourseDetail(this.ioscourse);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      constraints: new BoxConstraints.expand(),
      padding: EdgeInsets.only(top: 20.0),
      color: new Color(0xFFC62828),
      child: new Stack(
        children: <Widget>[
          _getGradient(),
          _getContent(),
          new Container(
            padding: EdgeInsets.only(top: 430.0, left: 60.0),
            child: _getCarousel(context, 0),
          ),
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
    if (await canLaunch(ioscourse.apply)) {
      await launch(ioscourse.apply);
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
      // padding: new EdgeInsets.symmetric(vertical: 40.0),
      children: <Widget>[
        new IosCourseCard(ioscourse),
        new Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: new Column(
              children: <Widget>[
                new Text(ioscourse.description,
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
                new Container(
                  margin: EdgeInsets.only(top: 10.0),
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

  Widget _getCarousel(BuildContext context, int carouselIndex) {
    return Column(
      children: <Widget>[
        SizedBox(
            // you may want to use an aspect ratio here for tablet support
            height: 180.0,
            child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/iostimeline"),
                child: new Stack(children: <Widget>[
                  Image(
                    image: new AssetImage('assets/images/learntocode.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 65.0, left: 35.0),
                    child: RaisedButton(
                      color: Color(0xFFE53935),
                      onPressed: () => Navigator.pushNamed(context, "/iostimeline"),
                      child: Text('View the course timeline'),
                    ),
                  )
                ]

                    // PageView.builder(
                    //   // store this controller in a State to save the carousel scroll position
                    //   controller: PageController(viewportFraction: 0.8),
                    //   itemBuilder: (BuildContext context, int itemIndex) {
                    //     return _getCarouselItem(context, carouselIndex, itemIndex);
                    //   },
                    // ),
                    )))
      ],
    );
  }
}