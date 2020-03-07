import 'package:creativetodo/pages/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (_) => Home(),
        );
      default:
        return CupertinoPageRoute(
          builder: (_) => Home(),
        );
    }
  }
}
