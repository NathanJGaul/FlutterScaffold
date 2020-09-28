import 'package:flutter/material.dart';
import 'package:myapp/routes.dart';

import 'package:myapp/screens/random_words.dart';
import 'package:myapp/screens/second_route.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.casino),
            title: Text('Random Words'),
            onTap: () {
              Routes.changeRoute(context, RandomWords.route);
            },
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Second Page'),
            onTap: () {
              Routes.changeRoute(context, SecondRoute.route);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}

