import 'package:bketoan/screens/home_screen.dart';
import 'package:bketoan/screens/not_found_screen.dart';
import 'package:bketoan/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => Splash());
      case '/home':
        return CupertinoPageRoute(builder: (_) => Home());
      default:
        return CupertinoPageRoute(builder: (_) => NotFoundScreen());
    }
  }
}
