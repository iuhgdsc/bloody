import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Donation3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Donation3();
  }
}

class _Donation3 extends State<Donation3> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: height * 0.45,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.15),
                child: Center(
                  child: Icon(Icons.check_circle_sharp,
                      size: 60, color: Color.fromARGB(255, 149, 231, 187)),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: height * 0.01),
                  child: Center(
                      child: Text(
                    "Cảm ơn bạn đã đăng ký\nhiến máu thành công!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 54, 204, 123),
                        fontWeight: FontWeight.w500),
                  ))),
              Container(
                margin: EdgeInsets.only(top: height * 0.035),
                child: Text(
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
                  "7:00 sáng\n16/10",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 126, 172, 147),
                      fontWeight: FontWeight.w500),
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            height: height * 0.08,
            child: Column(children: [
              Container(
                  width: width * 1,
                  child: Text("Địa điểm",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 27, 27, 27),
                          fontWeight: FontWeight.w500))),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  width: width * 1,
                  child: Text(
                      "201B Nguyễn Chí Thanh, Phường 12, Quận 5, TP.HCM",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 53, 53, 53),
                          fontWeight: FontWeight.w400))),
            ]),
          ),
          Container(
              height: height * 0.45,
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: SizedBox.fromSize(
                        child: Image(
                          // fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/MapBD2.png',
                          ),
                          opacity: const AlwaysStoppedAnimation(1),
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      // GoRouter.of(context)
                      // .pushNamed(MyAppRouteConstants.donation3RouteName);
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        height: height * 0.054,
                        width: width * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 182, 27, 45),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Center(
                          child: Text(
                            "Đăng kí",
                            style: TextStyle(
                                color: Color.fromARGB(252, 225, 225, 225)),
                          ),
                        )),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
