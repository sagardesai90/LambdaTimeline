import 'package:flutter/material.dart';

import '../dummy_pages/fsw_page.dart';

// Navigator.push(context, MaterialPageRoute(
//   builder: (BuildContext context) => FullStackWebPage()
// ));

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Lambda timeline'),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return new MenuContent(menuItemsList[index]);
          },
          itemCount: menuItemsList.length,
        ),
      ),
    );
  }
}

class MenuChevron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new IconButton(
        icon: Icon(Icons.chevron_right),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => FullStackWebPage()));
        });
  }
}

class MenuContent extends StatelessWidget {
  final MenuItem menuItem;
  MenuContent(this.menuItem);

  @override
  Widget build(BuildContext context) {
    return _buildMenuItems(menuItem);
  }

  Widget _buildMenuItems(MenuItem t) {
    if (t.children.isEmpty)
      return new ListTile(
          // see ListTile docs here: https://docs.flutter.io/flutter/material/ListTile-class.html
          dense: true,
          enabled: true,
          trailing: MenuChevron(),
          isThreeLine:
              false, // If false, the list tile is treated as having one line if the subtitle is null and treated as having two lines if the subtitle is non-null.
          onTap:
              () {}, // Instead of onLongPress: () => print("Menu item long pressed"),
          // selected: true, // Uncomment if we want selected subitems to turn blue
          title: new Text(t.title));

    return new ExpansionTile(
      key: new PageStorageKey<int>(3),
      title: new Text(t.title),
      children: t.children.map(_buildMenuItems).toList(),
    );
  }
}

class MenuItem {
  String title;
  List<MenuItem> children;
  MenuItem(this.title, [this.children = const <MenuItem>[]]);
}

List<MenuItem> menuItemsList = <MenuItem>[
  new MenuItem(
    'Full stack web development',
    <MenuItem>[
      new MenuItem('Front End'),
      new MenuItem('Back end'),
      new MenuItem('Computer Science'),
      new MenuItem('Lambda Labs'),
      new MenuItem('Career Development'),
      new MenuItem('Lambda Next'),
    ],
  ),
  new MenuItem(
    'iOS development',
    <MenuItem>[
      new MenuItem('Core iOS'),
      new MenuItem('Architecture and Design'),
      new MenuItem('Objective C and Beyond'),
      new MenuItem('Computer Science'),
      new MenuItem('Lambda Labs'),
      new MenuItem('Career Development'),
      new MenuItem('Lambda Next'),
    ],
  ),
  new MenuItem(
    'Android development',
    <MenuItem>[
      new MenuItem('Android Fundamentals'),
      new MenuItem('Architecture and Design'),
      new MenuItem('Kotlin'),
      new MenuItem('Computer Science'),
      new MenuItem('Lambda Labs'),
      new MenuItem('Computer Science'),
      new MenuItem('Career Development'),
      new MenuItem('Lambda Next'),
    ],
  ),
  new MenuItem(
    'Data Science',
    <MenuItem>[
      new MenuItem('Predictive statistics'),
      new MenuItem('Descriptive statistics'),
      new MenuItem('Data Engineering'),
      new MenuItem('Machine Learning'),
      new MenuItem('Lambda Labs'),
      new MenuItem('Career Development'),
      new MenuItem('Lambda Next'),
    ],
  ),
  new MenuItem(
    'UX Design',
    <MenuItem>[
      new MenuItem('UX Fundamentals'),
      new MenuItem('Advanced Design'),
      new MenuItem('Design in Practice'),
      new MenuItem('Lambda Next'),
    ],
  ),
];
