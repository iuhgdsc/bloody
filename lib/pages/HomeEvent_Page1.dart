import 'package:flutter/material.dart';

class HomeEvent_Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeEvent_Page1();
  }
}

class _HomeEvent_Page1 extends State<HomeEvent_Page1>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: height * 0.091,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(147, 255, 251, 255),
                border: Border.all(color: Color.fromARGB(255, 114, 114, 114)),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)),
              ),
              child: Text("Bệnh viện Quân Y 175",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromARGB(255, 32, 26, 26),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(147, 255, 251, 255),
                border: Border.all(color: Color.fromARGB(255, 114, 114, 114)),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)),
              ),
              child: Text("Gần tôi nhất",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromARGB(255, 32, 26, 26),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(147, 255, 251, 255),
                border: Border.all(color: Color.fromARGB(255, 114, 114, 114)),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)),
              ),
              child: Text("Mới nhất",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromARGB(255, 32, 26, 26),
                  )),
            ),
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: height * 0.22,
          color: Color.fromARGB(255, 235, 102, 102),
        ),
        Container(
          height: height * 0.25,
          color: Color.fromARGB(255, 144, 248, 169),
        ),
        Container(
          height: 300,
          color: Color.fromARGB(255, 25, 65, 223),
        ),
        Container(
          height: 300,
          color: Color.fromARGB(255, 234, 234, 100),
        )
      ]),
    );
  }
}
