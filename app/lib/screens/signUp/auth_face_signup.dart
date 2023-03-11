import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthFaceSignUp extends StatefulWidget {
  const AuthFaceSignUp({Key? key}) : super(key: key);

  @override
  State<AuthFaceSignUp> createState() => _AuthFaceSignUpState();
}

class _AuthFaceSignUpState extends State<AuthFaceSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      .pushNamed(MyAppRouteConstants.authFaceRouteName)
                },
                icon: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  size: 30,
                ),
                color: const Color(0xFF333335),
              ),
              const SizedBox(
                width: 55,
              ),
              const Text(
                "Xác thực khuôn mặt",
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
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/image 12.png",
            ),
            radius: 80,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Hướng dẫn",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 280,
            height: 121,
            child: Column(
              children: const [
                Text(
                  "1. Giữ điện thoại ổn định và thẳng khuôn mặt.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Text(
                  "2. Điều chỉnh để khuôn mặt nằm giữa vòng tròn.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Text(
                  "3. Thực hiện quay trái, phải, nhìn thẳng để hoàn thành xác thực khuôn mặt.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () => {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.signUpSuccessRouteName)
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
              onPressed: () {},
              child: const Text(
                "Để sau",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }
}
