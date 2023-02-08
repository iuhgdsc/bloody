import 'package:flutter/material.dart';

class HE_Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HE_Screen1();
  }
}

class _HE_Screen1 extends State<HE_Screen1> with WidgetsBindingObserver {
  List<String> notes = [
    "Đêm trước hiến máu không nên thức quá khuya (ngủ ít nhất 6 tiếng).",
    "Nên ăn nhẹ, KHÔNG ăn các đồ ăn có nhiều đạm, nhiều mỡ.",
    "KHÔNG uống rượu, bia.",
    "Chuẩn bị tâm lý thực sự thoải mái.",
    "Mang theo giấy tờ tùy thân.",
    "Uống nhiều nước."
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 182, 27, 45),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          child: Text(" ●  " + "${notes[index]}",
                              style: TextStyle(
                                  height: 1.3,
                                  color: Color.fromARGB(255, 1, 1, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)));
                    }),
              ),
            ],
          )),
    );
  }
}
