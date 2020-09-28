import 'package:flutter/material.dart';

import 'package:myapp/screens/random_words.dart';
import 'package:myapp/screens/second_route.dart';

class Routes {
  static String homeScreen = RandomWords.route;

  static getRoutes() {
    return {
      RandomWords.route: (context) => RandomWords(),
      SecondRoute.route: (context) => SecondRoute(),
    };
  }

  /// Navigates through the application. Only replaces the top Route if it is
  /// different from the new Route. Always keeps the home page as base of the
  /// Navigator stack. New screens are pushed on the Navigator stack. When the
  /// user switches between non-home screens, the new screen replaces the old
  /// screen. In this way, the stack of screens from the drawer is never higher
  /// than 2. Returning to the HomeScreen is done by just popping the current
  /// Route.
  static void changeRoute(BuildContext context, String newRouteName) {
    // Close drawer
    Navigator.pop(context);

    // Check current screen status
    bool currentRouteIsHome = false;
    bool currentRouteIsNewRoute = false;

    Navigator.popUntil(context, (currentRoute) {
      // This is just a way to access currentRoute; the top route in the
      // Navigator stack.
      if (currentRoute.settings.name == homeScreen) {
        currentRouteIsHome = true;
      }
      if (currentRoute.settings.name == newRouteName) {
        currentRouteIsNewRoute = true;
      }

      // Return true so popUntil() pops nothing.
      return true;
    });

    // Switch screen
    if (!currentRouteIsNewRoute) {
      // Only switch screen if new route is different from current route.
      if (currentRouteIsHome) {
        // Navigate from home to non-home screen.
        Navigator.pushNamed(context, newRouteName);
      } else {
        if (newRouteName == homeScreen) {
          // Navigate from non-home screen to home.
          Navigator.pop(context);
        } else {
          // Navigate from non-home screen to non-home screen.
          Navigator.popAndPushNamed(context, newRouteName);
        }
      }
    }
  }
}



