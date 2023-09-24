import 'package:eqraa/home/home%20screen/homescreen.dart';
import 'package:flutter/material.dart';

import '../splash/spalshscreen.dart';

class App_Routes {
  static const String splash = "/";
  static const String homescreen = "homescreen";
  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case homescreen:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text("No route defined for ${setting.name}"),
              ),
            );
          },
        );
    }
  }
}
