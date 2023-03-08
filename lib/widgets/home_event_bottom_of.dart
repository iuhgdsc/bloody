import 'package:bloody/widgets/cr_ev_2.dart';
import 'package:bloody/widgets/cr_ev_3.dart';
import 'package:flutter/material.dart';
import 'package:bloody/widgets/cr_ev_1.dart';

List<String> notes = [
  "Đêm trước hiến máu không nên thức quá khuya (ngủ ít nhất 6 tiếng).",
  "Nên ăn nhẹ, KHÔNG ăn các đồ ăn có nhiều đạm, nhiều mỡ.",
  "KHÔNG uống rượu, bia.",
  "Chuẩn bị tâm lý thực sự thoải mái.",
  "Mang theo giấy tờ tùy thân.",
  "Uống nhiều nước."
];

class HomeEventBottomOf extends StatefulWidget {
  const HomeEventBottomOf({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeEventBottomOf();
  }
}

class _HomeEventBottomOf extends State<HomeEventBottomOf>
    with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<Widget> body = [
    const Cr_Ev1(),
    const Cr_Ev2(),
    const Cr_Ev3(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: height * 0.6,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 182, 27, 45),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 182, 27, 45),
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Container(
                margin: const EdgeInsets.only(top: 6),
                child: TabBar(
                  onTap: _onItemTapped,
                  indicatorColor: const Color.fromARGB(255, 181, 25, 43),
                  unselectedLabelColor:
                      const Color.fromARGB(255, 166, 166, 166),
                  labelColor: const Color.fromARGB(255, 255, 255, 255),
                  labelStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Trước khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Sau khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Thông tin\nnhóm máu',
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              child: body.elementAt(_currentIndex),
            )),
      ),
    );
  }
}
