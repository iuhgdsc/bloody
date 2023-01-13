
import 'package:bloody/screens/login_signup1.dart';
import 'package:bloody/screens/screen2.dart';
import 'package:bloody/screens/screen3.dart';
import 'package:bloody/screens/screen4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SignUp(),
    );
  }
}

