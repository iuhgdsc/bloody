
import 'package:bloody/screens/otp_screen/body.dart';
import 'package:bloody/screens/otp_screen/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}