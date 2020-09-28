import 'package:flutter/material.dart';
import 'package:myapp/app_theme.dart';

import 'package:myapp/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      initialRoute: Routes.homeScreen,
      routes: Routes.getRoutes(),
      theme: AppTheme.getAppTheme(),
    );
  }
}

