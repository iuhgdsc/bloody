import 'package:bloody/screens/otp_screen/size_config.dart';
import 'package:bloody/screens/screen1/otp_form_screen1.dart';
import 'package:bloody/screens/screen1/screen1.dart';
import 'package:flutter/material.dart';

import '../login_signup1.dart';


class BodyScreen1 extends StatelessWidget {
  const BodyScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 71),
              Row(
                children: [
                  IconButton(
                      onPressed: () =>
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp())),
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left_outlined, size: 30,),
                      color: const Color(0xFF333335)),
                  SizedBox(width: 100,),
                  Text(
                    "Đăng kí",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Bạn cần đăng ký tài khoản trước khi sử dụng ứng dụng Bloody",
                style: TextStyle(
                    height: 1,
                    fontSize: 10,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    Icon(Icons.brightness_1,size: 15,color: Colors.black,),
                    Container(
                      width: 25,
                      child: Center(
                        child: new Container(
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                    Container(
                      width: 25,
                      child: Center(
                        child: new Container(
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                    Container(
                      width: 25,
                      child: Center(
                        child: new Container(
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                    Container(
                      width: 25,
                      child: Center(
                        child: new Container(
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                  ],
                ),
              ),
              const OtpForm1(),
            ],
          ),
        ),
      ),
    );
  }
}