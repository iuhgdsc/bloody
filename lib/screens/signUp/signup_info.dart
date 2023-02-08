// ignore_for_file: prefer_const_constructors

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
            SizedBox(
              height: 71,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                IconButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    ),
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left_outlined,
                    size: 30,
                  ),
                  color: const Color(0xFF333335),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
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
              padding: EdgeInsets.only(left: 110, top: 60),
              child: Row(
                children: [
                  Icon(
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
                  Icon(
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
                  Icon(
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
                  Icon(
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
                  Icon(
                    Icons.brightness_1,
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
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
            SizedBox(
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
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthIDSignUp()),
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
                  MaterialPageRoute(builder: (context) => AuthIDSignUp()),
                ),
              },
              child: Text(
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
