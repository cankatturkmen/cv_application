import 'package:cv_application/routes.dart';
import 'package:cv_application/screens/error/error_screen.dart';
import 'package:cv_application/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/home': (context) => MainScreen(),
        '/error': (context) => ErrorScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/error') {
          return MaterialPageRoute(builder: (context) => ErrorScreen());
        }
      },

      //todo
//       initialRoute: routeHome,
// navigatorKey: navKey,
// onGenerateRoute: RouteGenerator.generateRoute,
//todo
      debugShowCheckedModeBanner: false,
      title: 'CV Application',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
          bodyText2: TextStyle(color: kBodyTextColor),
          headline5: TextStyle(color: kDarkBlackColor),
        ),
      ),
      // home: MainScreen(),
    );
  }
}
