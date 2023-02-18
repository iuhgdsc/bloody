import 'package:bloody/screens/signUp/auth_id_signup.dart';
import 'package:bloody/screens/signUp/signup.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:flutter/material.dart';

class SignUpInfo extends StatefulWidget {
  const SignUpInfo({Key? key}) : super(key: key);

  @override
  State<SignUpInfo> createState() => _SignUpInfoState();
}

class _SignUpInfoState extends State<SignUpInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    ),
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
                  "Thông tin cá nhân",
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
                obscureText: false,
                decoration: const InputDecoration(
                  labelText: "Họ tên",
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
                obscureText: false,
                decoration: const InputDecoration(
                  labelText: "CMND/CCCD",
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
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AuthIDSignUp()),
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
                  MaterialPageRoute(builder: (context) => const AuthIDSignUp()),
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
        ),
      ),
    );
  }
}
