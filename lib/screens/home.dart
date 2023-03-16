import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/model/user.dart';
import 'package:bloody/screens/bloodDonationEventRegister/success.dart';
import 'package:bloody/screens/history.dart';
import 'package:bloody/screens/personal_info.dart';
import 'package:bloody/screens/qr_code.dart';
import 'package:bloody/screens/searchAdvance/search_advance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/home_event.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.isSucc});
  final bool isSucc;
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<Widget> listTab = [const HomeEvent(), const QRCode(), const History()];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _count = 0;

  void _change(bool isC) {
    setState(() {
      isC == true ? _count = _count + 1 : _count = _count;
    });
  }

  late User user;

  @override
  Widget build(BuildContext context) {
    bool isC = _currentIndex == 2
        ? false
        : _currentIndex == 3
            ? false
            : _count != 0
                ? false
                : widget.isSucc;
    List<Widget> listTab = [
      isC == true ? const SuccessRegister() : const HomeEvent(),
      const QRCode(),
      const History()
    ];
    _change(isC);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: SafeArea(
        child: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
          return Scaffold(
            appBar: _currentIndex == 0 && isC == true
                ? null
                : PreferredSize(
                    preferredSize: const Size.fromHeight(80.0),
                    child: Container(
                      height: 80,
                      width: width,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 25, left: 20, right: 20, bottom: 2),
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 237, 235),
                          border: Border.all(
                            color: const Color.fromARGB(255, 152, 152, 152),
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 18, right: 10),
                              child: const Image(
                                image: AssetImage('assets/search.png'),
                                width: 23,
                                height: 23,
                                color: Color.fromARGB(255, 70, 6, 13),
                              ),
                            ),
                            SizedBox(
                              height: height - 2,
                              width: width - 140,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchAdvanced(),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 15),
                                  child: const Text(
                                    "Tìm kiếm sự kiện tại đây",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 122, 71, 75),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(0),
                                  ),
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      insetPadding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      actions: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 380,
                                            height: 240,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Icon(
                                                        Icons.close,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 140,
                                                    ),
                                                    const Center(
                                                      child: Text(
                                                        "Tài khoản",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              23),
                                                      child: SizedBox.fromSize(
                                                        child: const Image(
                                                          width: 50,
                                                          height: 50,
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            'assets/avatar.png',
                                                          ),
                                                          opacity:
                                                              AlwaysStoppedAnimation(
                                                                  1),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            user.userName!,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          const Text(
                                                              "Đã xác thực"),
                                                        ],
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                const Person(),
                                                          ),
                                                        );
                                                      },
                                                      child: const Icon(
                                                        Icons
                                                            .arrow_forward_ios_sharp,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const Divider(
                                                  color: Colors.black,
                                                  thickness: 1,
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 9),
                                                      child: Row(
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                child: Icon(
                                                                  Icons
                                                                      .notifications,
                                                                  color: Color(
                                                                      0xFF79747E),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                top: 0,
                                                                right: 8,
                                                                child:
                                                                    Container(
                                                                  width: 15,
                                                                  height: 15,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            0,
                                                                            0),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      "3",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            11,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Expanded(
                                                            child: Text(
                                                              "Thông báo",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xFF333335),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const History(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Icon(
                                                              Icons
                                                                  .arrow_forward_ios_sharp,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(
                                                      color: Color(0xFF79747E),
                                                      thickness: 1,
                                                      height: 4,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 9),
                                                      child: Row(
                                                        children: const [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10),
                                                            child: Icon(
                                                              Icons
                                                                  .settings_outlined,
                                                              color: Color(
                                                                  0xFF79747E),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              "Thiết lập",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xFF333335),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .arrow_forward_ios_sharp,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(
                                                      color: Color(0xFF79747E),
                                                      thickness: 1,
                                                      height: 4,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 9),
                                                      child: Row(
                                                        children: const [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10),
                                                            child: Icon(
                                                              Icons.logout,
                                                              color: Color(
                                                                  0xFF79747E),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              "Đăng xuất",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xFF333335),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .arrow_forward_ios_sharp,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(23),
                                    child: SizedBox.fromSize(
                                      child: const Image(
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/avatar.png',
                                        ),
                                        opacity: AlwaysStoppedAnimation(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            bottomNavigationBar: bottomNavigationBar(),
            body: Center(
              child: listTab.elementAt(_currentIndex),
            ),
          );
        }),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 237, 235),
      ),
      child: BottomNavigationBar(
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 255, 237, 235),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bloodtype,
              color: _currentIndex == 0
                  ? const Color.fromARGB(255, 65, 0, 7)
                  : const Color.fromARGB(255, 161, 120, 122),
            ),
            label: 'Hiến máu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner,
              color: _currentIndex == 1
                  ? const Color.fromARGB(255, 65, 0, 7)
                  : const Color.fromARGB(255, 161, 120, 122),
            ),
            label: 'Mã QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: _currentIndex == 2
                  ? const Color.fromARGB(255, 65, 0, 7)
                  : const Color.fromARGB(255, 161, 120, 122),
            ),
            label: 'Lịch sử',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 161, 120, 122),
        unselectedItemColor: const Color.fromARGB(255, 161, 120, 122),
      ),
    );
  }
}
