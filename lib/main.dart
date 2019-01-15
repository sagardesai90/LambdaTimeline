import 'package:flutter/material.dart';

import './explore_appbar.dart';
import './course_main.dart';


import './fullstackweb/fullstackweb_timeline.dart';
import './ios/ios_timeline.dart';
import './data/data_timeline.dart';
import './android/android_timeline.dart';
import './design/design_timeline.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: <String, WidgetBuilder>{

          '/timeline': (_) => new Timeline(),
        },
        home: Scaffold(
            body: new Column(
          children: <Widget>[new ExploreAppBar(), new CourseMain()],
        )));
  }
}

          '/fullstackwebtimeline': (_) => new FullstackwebTimeline(),
          '/iostimeline': (_) => new IosTimeline(),
          '/datatimeline': (_) => new DataTimeline(),
          '/androidtimeline': (_) => new AndroidTimeline(),
          '/designtimeline': (_) => new DesignTimeline(),
          '/lambdalove': (_) => new LambdaLove(),
        },
        home: 
          new FirstScreen()
        );
  }
}

class FirstScreen extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
          body: new Column(
            children: <Widget>[
              new ExploreAppBar(),
              new CourseMain(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff00c6ff),
            onPressed: () =>
                          Navigator.pushNamed(context, "/lambdalove"),
            child: Text('❤️', style: TextStyle(fontSize: 24.0)),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        );
    }

