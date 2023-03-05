import 'package:bloody/screens/signUp/signup_info.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
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
            obscureText: false,
            onChanged: (value) {},
          ),
          const SizedBox(height: 30),
          const Text(
            "Gửi lại mã OTP",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () {
              print("d");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpInfo()));
            },
            child: const Text(
              "Tiếp tục",
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
