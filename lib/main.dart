import 'package:bloody/config/routes/app_route_config.dart';
import 'package:bloody/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:bloody/config/routes/app_route_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 255, 255, 255),
          onPrimary: Color.fromARGB(255, 255, 255, 255),
          secondary: Color.fromARGB(255, 255, 255, 255),
          onSecondary: Color.fromARGB(255, 255, 255, 255),
          background: Color.fromARGB(255, 255, 255, 255),
          onBackground: Color.fromARGB(255, 255, 255, 255),
          surface: Colors.grey,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
        ),
      ),

      routeInformationParser: NyAppRouter().router.routeInformationParser,
      routerDelegate: NyAppRouter().router.routerDelegate,

      // home: Home(),
    );
  }
}
