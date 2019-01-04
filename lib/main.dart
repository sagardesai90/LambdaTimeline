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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: <String, WidgetBuilder>{
          '/fullstackwebtimeline': (_) => new FullstackwebTimeline(),
          '/iostimeline': (_) => new IosTimeline(),
          '/datatimeline': (_) => new DataTimeline(),
          '/androidtimeline': (_) => new AndroidTimeline(),
          '/designtimeline': (_) => new DesignTimeline(),
        },
        home: Scaffold(
            body: new Column(
          children: <Widget>[new ExploreAppBar(), new CourseMain()],
        )));
  }
}
