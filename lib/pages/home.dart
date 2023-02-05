// ignore_for_file: prefer_const_constructors

import 'package:bloody/pages/history.dart';
import 'package:bloody/pages/qr_code.dart';
import 'package:flutter/material.dart';

import '../screens/home/body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<Widget> listTab = [Body(), QRCode(), History()];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: bottomNavigationBar(),
          body: Center(
            child: listTab.elementAt(_currentIndex),
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 237, 235),
      ),
      child: BottomNavigationBar(
        onTap: _onItemTapped,
        backgroundColor: Color.fromARGB(255, 255, 237, 235),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bloodtype,
              color: _currentIndex == 0
                  ? Color.fromARGB(255, 65, 0, 7)
                  : Color.fromARGB(255, 161, 120, 122),
            ),
            label: 'Hiến máu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner,
              color: _currentIndex == 1
                  ? Color.fromARGB(255, 65, 0, 7)
                  : Color.fromARGB(255, 161, 120, 122),
            ),
            label: 'Mã QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: _currentIndex == 2
                  ? Color.fromARGB(255, 65, 0, 7)
                  : Color.fromARGB(255, 161, 120, 122),
            ),
            label: 'Lịch sử',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 161, 120, 122),
        unselectedItemColor: Color.fromARGB(255, 161, 120, 122),
      ),
    );
  }
}
