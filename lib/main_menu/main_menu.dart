import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
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
          isThreeLine:
              false, // If false, the list tile is treated as having one line if the subtitle is null and treated as having two lines if the subtitle is non-null.
          onTap: () => print(
              "Menu item tapped"), // Instead of onLongPress: () => print("Menu item long pressed"),
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
      new MenuItem('Career Development'),
      new MenuItem('Lambda Next'),
    ],
  ),
];
