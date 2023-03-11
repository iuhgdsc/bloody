import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/user.dart';
import 'package:bloody/screens/otp_login/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'otp_login/otp_form.dart';

class OtpLogin extends StatefulWidget {
  const OtpLogin({super.key, required this.phone});
  final String phone;

  @override
  State<OtpLogin> createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
  @override
  Widget build(BuildContext context) {
    String phone = widget.phone;
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
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
                        GoRouter.of(context)
                            .pushNamed(MyAppRouteConstants.loginRouteName)
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  "Mã xác thực đã được gửi đến số $phone ",
                  style: const TextStyle(
                      height: 1, fontSize: 13, fontWeight: FontWeight.w400),
                ),
                buildTimer(),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    User userExistting = User();
                    if (state is LoginInitial) {
                      context.read<LoginCubit>().loadUser(phone);
                    }
                    if (state is LoginLoaded) {
                      userExistting = state.user;
                    }
                    return OtpForm(name: userExistting.name);
                  },
                ),
              ],
            ),
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
