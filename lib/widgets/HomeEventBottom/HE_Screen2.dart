import 'package:flutter/material.dart';

class HE_Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HE_Screen2();
  }
}

class _HE_Screen2 extends State<HE_Screen2> with WidgetsBindingObserver {
  List<String> notes = [
    "Duỗi thẳng, hơi nâng cao cánh tay trong 15 phút.",
    "Hạn chế gập tay trong quá trình nghỉ sau hiến máu.",
    "Nghỉ tại điểm hiến máu tối thiểu 15 phút.",
    "Uống nhiều nước.",
    "Chỉ ra về khi cảm thấy thực sự thoải mái.",
    "Nếu xuất hiện chảy máu từ vết băng cầm máu:",
    "Nâng cánh tay lên và ấn nhẹ vào vết bông.",
    "Ngồi xuống ghế và thông báo cho nhân viên y tế để được hỗ trợ."
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
                      return (index <= 5)
                          ? Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              child: Text(" ●  " + "${notes[index]}",
                                  style: TextStyle(
                                      height: 1.3,
                                      color: Color.fromARGB(255, 1, 1, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)))
                          : Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 30),
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
