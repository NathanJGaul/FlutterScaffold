import 'package:flutter/material.dart';
import 'package:myapp/app_scaffold.dart';

class SecondRoute extends StatelessWidget {
  static String route = "second_route";

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _content,
    );
  }

  final Widget _content = Center(
    child: Text('Say \'Hello\' to the second page'),
  );
}
