import 'package:flutter/material.dart';
import './subtopics.dart';

class Timeline extends StatelessWidget {
  //sample
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('hello')
          );
        }
      )
      
    );
  }

}