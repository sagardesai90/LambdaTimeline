import 'package:flutter/material.dart';


class Timeline extends StatelessWidget {
  //sample
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Lambda School',
      theme: new ThemeData(
        primaryColor: Colors.grey.shade900
      ),
      
    );
  }

  Widget getListView() {
    var listItems = getListElements();
    var listView = ListView.builder(
      itemBuilder: (context, index){
        return ListTile(
          title: Text(listItems[index]),
        );
      }
    );
  }


}