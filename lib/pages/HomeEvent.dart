import 'package:bloody/pages/HomeEvent_Page1.dart';
import 'package:flutter/material.dart';

class HomeEvent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeEvent();
  }
}

class _HomeEvent extends State<HomeEvent> with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<Widget> body = [
    HomeEvent_Page1(),
    Center(child: Text("Kai3")),
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
      height: height,
      color: Color.fromARGB(255, 255, 186, 186),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: Container(
              margin: const EdgeInsets.only(top: 6),
              child: TabBar(
                onTap: _onItemTapped,
                indicatorColor: Color.fromARGB(255, 182, 27, 45),
                unselectedLabelColor: Color.fromARGB(255, 111, 107, 107),
                labelColor: Color.fromARGB(255, 182, 27, 45),
                tabs: [
                  Tab(
                    text: 'Sự kiện',
                  ),
                  Tab(
                    text: 'Khẩn cấp',
                  ),
                ],
              ),
            )),
            body: Container(
              child: Center(
                child: body.elementAt(_currentIndex),
              ),
            )),
      ),
    );
  }
}
