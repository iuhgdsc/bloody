import 'package:flutter/material.dart';

class Donation2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Donation2();
  }
}

class _Donation2 extends State<Donation2> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: SingleChildScrollView(
                    child: Column(children: [
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
                              child: Text("Câu hỏi lọc hồ sơ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 41, 41, 41),
                                      fontWeight: FontWeight.w600))),
                        ),
                      )
                    ]),
                  ),
                ])))));
  }
}
