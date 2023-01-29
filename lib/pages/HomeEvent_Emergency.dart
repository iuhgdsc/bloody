import 'package:bloody/widgets/CPN_HomeEventHeader.dart';
import 'package:flutter/material.dart';

class HomeEvent_Emergency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeEvent_Emergency();
  }
}

class _HomeEvent_Emergency extends State<HomeEvent_Emergency>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Column(children: [
      CPN_HomeEventHeader(),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: height * 0.09,
        child: Container(
            alignment: Alignment.center,
            child: Column(children: [
              Container(
                height: height * 0.035,
                alignment: Alignment.centerLeft,
                child: Text("Đề xuất cho bạn",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 37, 37, 37),
                        fontWeight: FontWeight.w500)),
              ),
              Container(
                height: height * 0.025,
                alignment: Alignment.topLeft,
                child: Text("Dựa trên thông tin hồ sơ của bạn",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 92, 92, 92),
                        fontWeight: FontWeight.w400)),
              )
            ])),
      ),
      Container(
        height: height * 0.8,
        color: Color.fromARGB(255, 255, 28, 7),
      )
    ]));
  }
}
