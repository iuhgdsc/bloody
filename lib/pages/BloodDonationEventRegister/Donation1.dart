import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Donation1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Donation1();
  }
}

class _Donation1 extends State<Donation1> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    List<String> bloodGroup = ["A", "B", "C", "D"];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * 0.055,
                  child: Row(children: [
                    Container(
                      width: width * 0.12,
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/back.png'),
                          width: 20,
                          height: 20,
                          color: Color.fromARGB(255, 16, 16, 16),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Center(
                            child: Text("Thời gian và địa điểm ",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 41, 41, 41),
                                    fontWeight: FontWeight.w600))),
                      ),
                    )
                  ]),
                ),
                Container(
                  height: height * 0.11,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Text(
                      "Trung Tâm Hiến Máu Nhân Đạo Tp.HCM \n106 Thiên Phước, Phường 9, Tân Bình, TP.HCM \nNgày 10/10/2022 ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.1,
                        fontSize: 15,
                        color: Color.fromARGB(255, 41, 41, 41),
                      )),
                ),
                Container(
                  height: 10,
                  color: Color.fromARGB(150, 232, 232, 232),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.amber,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                  child: Text("Nhóm máu cần hiến",
                      style: TextStyle(
                          height: 1.5,
                          color: Color.fromARGB(255, 16, 16, 16),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                Container(
                  height: height * 0.13,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: Color.fromARGB(255, 123, 255, 100),
                  child: Column(children: [
                    Container(
                        color: Color.fromARGB(255, 222, 115, 255),
                        height: height * 0.065,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                            ])),
                    Container(
                        color: Color.fromARGB(255, 255, 147, 201),
                        height: height * 0.065,
                        child: Row(children: []))
                  ]),
                ),
                Container(
                  height: 10,
                  color: Color.fromARGB(150, 232, 232, 232),
                ),
                Container(
                  height: height * 0.2,
                  color: Color.fromARGB(149, 255, 120, 120),
                  child: Column(children: [
                    Container(
                      height: height * 0.13,
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .pushNamed(MyAppRouteConstants.donation2RouteName);
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          height: height * 0.054,
                          width: width * 0.86,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 182, 27, 45),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Center(
                            child: Text(
                              "Tham gia",
                              style: TextStyle(
                                  color: Color.fromARGB(252, 225, 225, 225)),
                            ),
                          )),
                    )
                  ]),
                ),
              ],
            ),
          )),
    ));
  }
}
