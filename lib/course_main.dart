import 'package:flutter/material.dart';

import './course_card.dart';
import './courses.dart';
import './timeline.dart';
import './subtopics.dart';

class CourseMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new ListView.builder(
            itemBuilder: (context, index) => new CourseCard(courses[index]),
            itemCount: courses.length,
            padding: new EdgeInsets.symmetric(vertical: 10.0)));
  }
}
