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
      padding: EdgeInsets.only(top: 20.0),
      color: new Color(0xFFC62828),
      child: new Stack(
        children: <Widget>[
          _getGradient(),
          _getContent(),
          new Container(
            padding: EdgeInsets.only(top: 430.0),
            child: _getCarousel(context, 0),),
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
      // padding: new EdgeInsets.symmetric(vertical: 40.0),
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
          child: PageView.builder(
            // store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _getCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _getCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: Color(0xFFECEFF1),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Stack(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }

}
