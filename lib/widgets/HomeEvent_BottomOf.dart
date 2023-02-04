import 'package:bloody/widgets/HomeEventBottom/HE_Screen1.dart';
import 'package:flutter/material.dart';

class HomeEvent_BottomOf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeEvent_BottomOf();
  }
}

class _HomeEvent_BottomOf extends State<HomeEvent_BottomOf>
    with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<Widget> body = [
    HE_Screen1(),
    Center(
      child: Text("Kaiii2"),
    ),
    Center(
      child: Text("Kaiii3"),
    )
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
      margin: EdgeInsets.only(top: 15, bottom: 70),
      height: height * 0.8,
      color: Color.fromARGB(255, 135, 158, 2),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 182, 27, 45),
                elevation: 0,
                title: Container(
                  margin: const EdgeInsets.only(top: 6),
                  child: TabBar(
                    onTap: _onItemTapped,
                    indicatorColor: Color.fromARGB(255, 181, 25, 43),
                    unselectedLabelColor: Color.fromARGB(255, 166, 166, 166),
                    labelColor: Color.fromARGB(255, 255, 255, 255),
                    tabs: [
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
                )),
            body: Container(
              child: Container(
                child: body.elementAt(_currentIndex),
              ),
            )),
      ),
    );
  }
}
