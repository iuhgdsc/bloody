import 'package:bloody/bloc/login/login_cubit.dart';
import 'package:bloody/screens/login.dart';
import 'package:bloody/screens/otp_login/body.dart';
import 'package:bloody/screens/otp_login/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'otp_login/otp_form.dart';

class OtpLogin extends StatelessWidget {
  const OtpLogin({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
        if (state is NumberLoaded) {
          String phone = state.phonenumber;
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
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
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
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "Mã xác thực đã được gửi đến số $phone",
                      style: const TextStyle(
                          height: 1, fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    buildTimer(),
                    const OtpForm(),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Text("");
        }
      }),
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
