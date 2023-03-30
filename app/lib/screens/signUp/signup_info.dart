import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/user.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpInfo extends StatefulWidget {
  const SignUpInfo({Key? key}) : super(key: key);

  @override
  State<SignUpInfo> createState() => _SignUpInfoState();
}

class _SignUpInfoState extends State<SignUpInfo> {
  String name = "";
  String cccd = "";
  String phone = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 71,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
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
                      width: 60,
                    ),
                    const Text(
                      "Personal information",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Center(
                    child: Container(
                      height: 2.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 110, top: 60),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.brightness_1,
                        size: 15,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 25,
                        child: Center(
                          child: Container(
                            height: 2.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.brightness_1,
                        size: 15,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 25,
                        child: Center(
                          child: Container(
                            height: 2.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.brightness_1,
                        size: 15,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 25,
                        child: Center(
                          child: Container(
                            height: 2.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.brightness_1,
                        size: 15,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 25,
                        child: Center(
                          child: Container(
                            height: 2.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.brightness_1,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: TextFormField(
                    onChanged: (value) {
                      name = value;
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                      labelText: "Full name",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: TextFormField(
                    onChanged: (value) {
                      cccd = value;
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                      labelText: "ID/CCCD",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    if (state is LoginLoaded) {
                      phone = "0$state.user.phone!";
                    }
                    User user = User(phone: phone, cccd: cccd, name: name);
                    context.read<LoginCubit>().setUser(user);
                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.authIDRouteName);
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.authIDRouteName)
                  },
                  child: const Text(
                    "Later",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
