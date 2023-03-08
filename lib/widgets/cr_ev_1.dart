import 'package:flutter/material.dart';

List<String> notes = [
  "Đêm trước hiến máu không nên thức quá khuya (ngủ ít nhất 6 tiếng).",
  "Nên ăn nhẹ, KHÔNG ăn các đồ ăn có nhiều đạm, nhiều mỡ.",
  "KHÔNG uống rượu, bia.",
  "Chuẩn bị tâm lý thực sự thoải mái.",
  "Mang theo giấy tờ tùy thân.",
  "Uống nhiều nước."
];

class Cr_Ev1 extends StatefulWidget {
  const Cr_Ev1({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Cr_Ev1();
  }
}

class _Cr_Ev1 extends State<Cr_Ev1> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color.fromARGB(255, 182, 27, 45),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          child: Text(" ●  " "${notes[index]}",
                              style: const TextStyle(
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
