import 'package:bloody/widgets/HomeEventBottom/HE_Screen1.dart';
import 'package:bloody/widgets/HomeEventBottom/HE_Screen2.dart';
import 'package:bloody/widgets/HomeEventBottom/HE_Screen3.dart';
import 'package:flutter/material.dart';

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
    HE_Screen1(),
    HE_Screen2(),
    HE_Screen3(),
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
      margin: EdgeInsets.only(top: 15),
      height: height * 0.6,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 182, 27, 45),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 182, 27, 45),
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Container(
                margin: const EdgeInsets.only(top: 6),
                child: TabBar(
                  onTap: _onItemTapped,
                  indicatorColor: Color.fromARGB(255, 181, 25, 43),
                  unselectedLabelColor: Color.fromARGB(255, 166, 166, 166),
                  labelColor: Color.fromARGB(255, 255, 255, 255),
                  tabs: const [
                    Tab(
                      text: 'Trước khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Sau khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Thông tin]\nnhóm máu',
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              child: Container(
                child: body.elementAt(_currentIndex),
              ),
            )),
      ),
    );
  }
}
