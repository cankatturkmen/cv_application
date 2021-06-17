import 'package:cv_application/routes.dart';
import 'package:cv_application/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      // case routeAbout:
      //   return MaterialPageRoute(builder: (_) => AboutPage());
      //   break;
      // case routeContacts:
      //   return MaterialPageRoute(builder: (_) => ContactPage());
      //   break;
    }
  }
}
