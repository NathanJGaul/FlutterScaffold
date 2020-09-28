import 'package:flutter/material.dart';
import 'package:myapp/app_drawer.dart';

class AppScaffold extends StatelessWidget {

  const AppScaffold({
    this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Scaffold'),
      ),
      drawer: AppDrawer(),
      body: this.body,
    );
  }
}
