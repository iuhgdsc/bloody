import 'package:bloody/screens/otp_login.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final urlImages = [
    'assets/images/Frame 2608145.png',
    'assets/images/Frame 2608146.png',
    'assets/images/Frame 2608147.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 67),
                      width: double.maxFinite,
                      child: CarouselSlider.builder(
                        itemCount: urlImages.length,
                        itemBuilder:
                            (BuildContext context, int index, int reaIndex) {
                          final urlImage = urlImages[index];

                          return buildImage(urlImage, index);
                        },
                        options: CarouselOptions(
                          height: 200,
                          viewportFraction: 0.9,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.decelerate,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Đăng nhập",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
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
                    labelText: "Nhập số điện thoại của bạn ở đây",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: buttonPrimary,
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpLogin()),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 329,
                height: 20,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Khi bạn chọn tiếp tục, bạn đã đồng ý với các ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Điều Khoản\n",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 329,
                height: 20,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "và ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Chính Sách Bảo Mật",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                        text: " của chúng tôi",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => SizedBox(
        width: double.infinity,
        child: Image.asset(
          urlImage,
          fit: BoxFit.fill,
        ),
      );
}
