import 'package:bloody/pages/HomeEvent.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<Widget> body = [
    HomeEvent(),
    Center(child: Text("Kai2")),
    Center(child: Text("Kai3")),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var heightAP = AppBar().preferredSize.height;
    var widthAP = AppBar().preferredSize.width;
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: SafeArea(
            child: Scaffold(
                appBar: PreferredSize(
                    preferredSize: Size.fromHeight(80.0),
                    child: Container(
                      height: 80,
                      width: width,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                          margin: const EdgeInsets.only(
                              top: 25, left: 20, right: 20, bottom: 2),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 237, 235),
                            border: Border.all(
                                color: Color.fromARGB(255, 152, 152, 152)),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 18, right: 10),
                                child: Image(
                                  image: AssetImage('assets/search.png'),
                                  width: 23,
                                  height: 23,
                                  color: Color.fromARGB(255, 70, 6, 13),
                                ),
                              ),
                              SizedBox(
                                  height: heightAP - 2,
                                  width: width - 140,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Tìm kiếm sự kiện tại đây",
                                      hintStyle: TextStyle(
                                          fontSize: 18,
                                          color:
                                              Color.fromARGB(255, 122, 71, 75)),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  )),
                              Container(
                                  height: 45,
                                  width: 45,
                                  child: Center(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(23),
                                        child: SizedBox.fromSize(
                                          child: Image(
                                            width: 35,
                                            height: 35,
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/huyen.png',
                                            ),
                                            opacity:
                                                const AlwaysStoppedAnimation(1),
                                          ),
                                        )),
                                  ))
                            ],
                          )),
                    )),
                bottomNavigationBar: bottomNavigationBar(),
                body: Container(
                  child: Center(
                    child: body.elementAt(_currentIndex),
                  ),
                ))));
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
            icon: Icon(Icons.qr_code_scanner,
                color: _currentIndex == 1
                    ? Color.fromARGB(255, 65, 0, 7)
                    : Color.fromARGB(255, 161, 120, 122)),
            label: 'Mã QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,
                color: _currentIndex == 2
                    ? Color.fromARGB(255, 65, 0, 7)
                    : Color.fromARGB(255, 161, 120, 122)),
            label: 'Lịch sử',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 161, 120, 122),
        unselectedItemColor: Color.fromARGB(255, 161, 120, 122),
      ),
    );
  }
}
