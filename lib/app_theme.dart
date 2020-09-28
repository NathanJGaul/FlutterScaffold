import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      // Colors
      brightness: Brightness.dark,
      primaryColor: Colors.deepOrange,
      accentColor: Colors.cyan[600],
      // Font
      fontFamily: 'Roboto',
    );
  }
}
