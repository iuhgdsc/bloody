import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 40),
          Pinput(
            length: 4,
            showCursor: true,
            onChanged: (value) {},
          ),
          const SizedBox(height: 55),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () => {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.signUpRouteName)
            },
            child: const Text(
              "Continue",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
