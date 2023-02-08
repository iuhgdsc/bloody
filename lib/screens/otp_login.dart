import 'package:bloody/screens/otp_login/body.dart';
import 'package:bloody/screens/otp_login/size_config.dart';
import 'package:flutter/material.dart';

class OtpLogin extends StatelessWidget {
  const OtpLogin({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
