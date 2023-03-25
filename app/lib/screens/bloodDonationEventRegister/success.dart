import 'package:bloody/model/blood_banner.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SuccessRegister extends StatefulWidget {
  const SuccessRegister({super.key, required this.centerBlood});
  final CenterBlood? centerBlood;
  @override
  State<StatefulWidget> createState() {
    return _SuccessRegister();
  }
}

class _SuccessRegister extends State<SuccessRegister>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.4,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: height * 0.11),
                  child: const Center(
                    child: Icon(
                      Icons.check_circle_sharp,
                      size: 60,
                      color: Color.fromARGB(255, 149, 231, 187),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.01),
                  child: const Center(
                    child: Text(
                      "Cảm ơn bạn đã đăng ký\nhiến máu thành công!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 54, 204, 123),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.035),
                  child: const Text(
                    "Bệnh viện Chợ Rẫy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 27, 27, 27),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.01),
                  child: Text(
                    widget.centerBlood!.date!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 126, 172, 147),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            height: height * 0.08,
            child: Column(
              children: [
                SizedBox(
                  width: width * 1,
                  child: const Text(
                    "Địa điểm",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 27, 27, 27),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: width * 1,
                  child: const Text(
                    "201B Nguyễn Chí Thanh, Phường 12, Quận 5, TP.HCM",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 53, 53, 53),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.3,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox.fromSize(
                    child: const Image(
                      image: AssetImage(
                        'assets/map.png',
                      ),
                      opacity: AlwaysStoppedAnimation(1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://www.google.com/maps/search/?api=1&query=Đại học Bách Khoa Hà Nội');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    height: height * 0.054,
                    width: width * 0.86,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 182, 27, 45),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Dẫn đường",
                        style: TextStyle(
                          color: Color.fromARGB(252, 225, 225, 225),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
