import 'package:flutter/material.dart';

List<String> notes = [
  "Duỗi thẳng, hơi nâng cao cánh tay trong 15 phút.",
  "Hạn chế gập tay trong quá trình nghỉ sau hiến máu.",
  "Nghỉ tại điểm hiến máu tối thiểu 15 phút.",
  "Uống nhiều nước.",
  "Chỉ ra về khi cảm thấy thực sự thoải mái.",
  "Nếu xuất hiện chảy máu từ vết băng cầm máu:",
  "Nâng cánh tay lên và ấn nhẹ vào vết bông.",
  "Ngồi xuống ghế và thông báo cho nhân viên y tế để được hỗ trợ.",
];

class CrEv2 extends StatefulWidget {
  const CrEv2({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CrEv2();
  }
}

class _CrEv2 extends State<CrEv2> with WidgetsBindingObserver {
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: notes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: (index <= 5)
                        ? const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15)
                        : const EdgeInsets.only(
                            top: 5, bottom: 5, left: 30, right: 15),
                    child: Text(
                      " ●  " "${notes[index]}",
                      style: const TextStyle(
                          height: 1.3,
                          color: Color.fromARGB(255, 1, 1, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
