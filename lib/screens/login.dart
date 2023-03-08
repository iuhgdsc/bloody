import 'package:bloody/model/Register/question_check.dart';
import 'package:bloody/screens/otp_login.dart';
import 'package:bloody/widgets/buttton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String verify = '';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Dio _dio = Dio();

  final List<QuestionRegisterCheck> ques = [];
  final urlImages = [
    'assets/images/Frame 2608145.png',
    'assets/images/Frame 2608146.png',
    'assets/images/Frame 2608147.png'
  ];
  String countryCode = '+84';

  fetchQues() async {
    String apiURL = "http://192.168.56.1:5000/api/getQuestions";

    Response res = await _dio.get(apiURL);

    var data = res.data["questions"] as List;
    for (final question in data) {
      final questionCheck = QuestionRegisterCheck.fromMap(question);
      // ques.add(questionCheck);
      QuestionRegisterCheck quesCheck = QuestionRegisterCheck(
          id: questionCheck.id,
          question: questionCheck.question,
          answers: questionCheck.answers);
      ques.add(quesCheck);
    }
    print(ques.length);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchQues();
  }

  var phone = '';
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
                      margin: const EdgeInsets.only(top: 67),
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
                              const Duration(milliseconds: 800),
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
                  keyboardType: TextInputType.phone,
                  // onChanged: (value) {
                  //   phone = value;
                  // },
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
                // onPressed: () async {
                //   await FirebaseAuth.instance.verifyPhoneNumber(
                //     phoneNumber: '$countryCode $phone',
                //     verificationCompleted: (PhoneAuthCredential credential) {},
                //     verificationFailed: (FirebaseAuthException e) {},
                //     codeSent: (String verificationId, int? resendToken) {
                //       Login.verify = verificationId;
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => const OtpLogin(),
                //         ),
                //       );
                //     },
                //     codeAutoRetrievalTimeout: (String verificationId) {},
                //   );
                // },
                onPressed: () {
                  print("sd");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpLogin(),
                    ),
                  );
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
