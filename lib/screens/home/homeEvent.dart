import 'package:bloody/screens/home/event.dart';
import 'package:flutter/material.dart';
import 'emergency.dart';

class HomeEvent extends StatefulWidget {
  const HomeEvent({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeEvent();
  }
}

class _HomeEvent extends State<HomeEvent> with WidgetsBindingObserver {
  final FocusNode _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {}

  int _currentIndex = 0;
  List<Widget> body = [
    const Event(),
    const Emergency(),
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
            automaticallyImplyLeading: false,
            title: Container(
              margin: const EdgeInsets.only(top: 6),
              child: TabBar(
                onTap: _onItemTapped,
                indicatorColor: Color.fromARGB(255, 182, 27, 45),
                unselectedLabelColor: Color.fromARGB(255, 111, 107, 107),
                labelColor: Color.fromARGB(255, 182, 27, 45),
                tabs: const [
                  Tab(
                    text: 'Sự kiện',
                  ),
                  Tab(
                    text: 'Khẩn cấp',
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: body.elementAt(_currentIndex),
          ),
        ),
      ),
    );
  }
}
