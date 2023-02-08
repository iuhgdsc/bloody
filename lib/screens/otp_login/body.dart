import 'package:bloody/screens/otp_login/size_config.dart';
import 'package:flutter/material.dart';

import '../../screens/login.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 71),
              Row(
                children: [
                  IconButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      ),
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 30,
                    ),
                    color: const Color(0xFF333335),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  const Text(
                    "Đăng nhập - Nhập mã OTP",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                "Mã xác thực đã được gửi đến số 0971456789",
                style: TextStyle(
                    height: 1, fontSize: 13, fontWeight: FontWeight.w400),
              ),
              buildTimer(),
              const OtpForm(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Mã xác thực còn hiệu lực trong ",
          style:
              TextStyle(height: 2, fontSize: 13, fontWeight: FontWeight.w400),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "${value.toInt()} giây",
            style: const TextStyle(
                height: 2, fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
