import 'package:bloody/screens/login.dart';
import 'package:bloody/screens/signUp/signup_info.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var code = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 40),
          Pinput(
            length: 4,
            showCursor: true,
            onChanged: (value) {
              code = value;
            },
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
            onPressed: () async {
              PhoneAuthCredential phoneAuthCredential =
                  PhoneAuthProvider.credential(
                      verificationId: Login.verify, smsCode: code);
              await _auth.signInWithCredential(phoneAuthCredential);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpInfo()));
            },
            child: const Text(
              "Tiếp tục",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
