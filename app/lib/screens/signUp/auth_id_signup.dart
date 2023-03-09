import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/screens/signUp/auth_face_signup.dart';
import 'package:bloody/screens/signUp/signup_info.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthIDSignUp extends StatefulWidget {
  const AuthIDSignUp({Key? key}) : super(key: key);

  @override
  State<AuthIDSignUp> createState() => _AuthIDSignUpState();
}

class _AuthIDSignUpState extends State<AuthIDSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Column(
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpInfo()),
                      ),
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 30,
                    ),
                    color: const Color(0xFF333335),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const Text(
                    "Xác thực CMND/CCCD",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    alignment: AlignmentDirectional.topStart,
                    child: const Icon(Icons.add_photo_alternate_outlined),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Mặt trước",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  )
                ],
              ),
              Container(
                height: 140,
                width: 353,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Image.asset("assets/images/Rectangle 23.png"),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    alignment: AlignmentDirectional.topStart,
                    child: const Icon(Icons.add_photo_alternate_outlined),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Mặt sau",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  )
                ],
              ),
              Container(
                height: 140,
                width: 353,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Image.asset("assets/images/Rectangle 22.png"),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: buttonPrimary,
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthFaceSignUp()),
                  ),
                },
                child: const Text(
                  "Tiếp tục",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthFaceSignUp()),
                  ),
                },
                child: const Text(
                  "Để sau",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
