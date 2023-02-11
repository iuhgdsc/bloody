import 'package:flutter/material.dart';

class HE_Screen3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HE_Screen3();
  }
}

class _HE_Screen3 extends State<HE_Screen3> with WidgetsBindingObserver {
  List<String> notes = [
    "Các nhóm máu quan trọng nhất trong truyền máu là hệ thống nhóm máu ABO và hệ thống nhóm máu RhD.",
    "Nhóm máu được xác định bởi một loại protein (kháng nguyên) trên bề mặt hồng cầu. Vì vậy, hệ thống ABO có kháng nguyên A và B và hệ thống RhD có kháng nguyên D.",
    "Tổng cộng, có 30 hệ thống nhóm máu chính. Điều này có nghĩa là một người có thể có A RhD dương tính, đồng thời Kell (hệ thống Kell) dương tính, M và N (hệ thống MNS) dương tính và Lea và Leb (hệ thống Lewis) dương tính."
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
