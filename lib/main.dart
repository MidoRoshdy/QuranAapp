import 'package:eqraa/home/home%20screen/provider/homescreenprovider.dart';
import 'package:eqraa/splash/provider/splashprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'core/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, DeviceType deviceType) {
      print(orientation);
      return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => SplashProvider()),
            ChangeNotifierProvider(create: (_) => HomeScreenProvider())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: App_Routes.splash,
            title: 'eqraa',
            theme: ThemeData.light(),
            onGenerateRoute: App_Routes.onGenerateRoute,
          ));
    });
  }
}
