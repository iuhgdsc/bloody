import 'package:bloody/screens/otp_screen/body.dart';
import 'package:bloody/screens/otp_screen/size_config.dart';
import 'package:bloody/screens/screen1/body_screen1.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BodyScreen1(),
    );
  }
}