import 'dart:async';

import 'package:bloody/model/Center_Blood.dart';
import 'package:bloody/screens/bloodDonationEventRegister/address_bloodGr.dart';
import 'package:bloody/widgets/cnp_homeeventheader.dart';
import 'package:bloody/widgets/homeevent_bottomof.dart';
import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Event();
  }
}

class _Event extends State<Event> with WidgetsBindingObserver {
  List<CenterBlood> center_bloods = [
    CenterBlood(
        id: "1",
        name: "Trung tâm Truyền máu Chợ Rẫy",
        image: "assets/images/choray.png",
        address: "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
        date: DateTime.now(),
        isJoined: false),
    CenterBlood(
        id: "2",
        name: "Trung tâm Truyền máu 2",
        image: "assets/images/175.png",
        address: "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
        date: DateTime.now(),
        isJoined: false),
    CenterBlood(
        id: "3",
        name: "Trung tâm Truyền máu 3",
        image: "assets/images/huyethoc.png",
        address: "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
        date: DateTime.now(),
        isJoined: false)
  ];

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  bool end = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage == 2) {
        end = true;
      } else if (_currentPage == 0) {
        end = false;
      }

      if (end == false) {
        _currentPage++;
      } else {
        _currentPage--;
      }

      if (_pageController.hasClients) {
        var animateToPage = _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          CPN_HomeEventHeader(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: height * 0.23,
            child: PageView.builder(
                controller: _pageController,
                itemCount: center_bloods.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.8,
                        color: Color.fromARGB(255, 52, 50, 50),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.01,
                          ),
                          height: height * 0.15,
                          child: Row(
                            children: [
                              Container(
                                width: width * 0.25,
                                height: height * 0.17,
                                padding: EdgeInsets.symmetric(vertical: 11),
                                alignment: Alignment.topCenter,
                                child: Image(
                                    image:
                                        AssetImage(center_bloods[index].image)),
                              ),
                              Container(
                                width: width * 0.59,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.008),
                                child: Column(
                                  children: [
                                    Container(
                                      height: height * 0.04,
                                      padding: EdgeInsets.only(
                                          top: height * 0.014,
                                          left: width * 0.01),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        center_bloods[index].name,
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 38, 38, 38),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.06,
                                      padding: EdgeInsets.only(top: 3),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: width * 0.09,
                                            height: height * 0.06,
                                            alignment: Alignment.topLeft,
                                            padding: EdgeInsets.only(top: 5),
                                            child: Icon(
                                              Icons.bloodtype_outlined,
                                              size: 30,
                                              color: Color.fromARGB(
                                                  255, 109, 109, 109),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topLeft,
                                            width: width * 0.47,
                                            child: Text(
                                              center_bloods[index].address,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 109, 109, 109),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: width * 0.09,
                                            height: height * 0.05,
                                            alignment: Alignment.topLeft,
                                            padding: EdgeInsets.only(top: 5),
                                            child: Icon(
                                              Icons.date_range,
                                              size: 30,
                                              color: Color.fromARGB(
                                                  255, 109, 109, 109),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            width: width * 0.47,
                                            child: Text(
                                              "${center_bloods[index].date}",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 109, 109, 109),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddressBloodGr()),
                              );
                            },
                            child: Container(
                              height: height * 0.08 - 3,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.035, vertical: 9),
                              child: Container(
                                  height: 50,
                                  width: width * 1,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 182, 27, 45),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Tham gia",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              252, 225, 225, 225)),
                                    ),
                                  )),
                            ))
                      ],
                    ),
                  ));
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: height * 0.255,
            color: Color.fromARGB(255, 255, 237, 235),
            child: Center(
              child: Container(
                height: height * 0.2,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          width: 0.8,
                          color: Color.fromARGB(255, 52, 50, 50),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      height: height * 0.2 - 2,
                      width: width * 0.422,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: height * 0.06 - 8,
                            child: Center(
                              child: Icon(
                                Icons.info_outline,
                                size: 40,
                                color: Color.fromARGB(255, 182, 27, 45),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04 - 13,
                            child: Center(
                              child: Text(
                                "Chỉ có",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 28, 28, 28),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04,
                            child: Center(
                              child: Text(
                                "1.68%",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 182, 27, 45),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.4,
                            height: height * 0.06 - 5,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                "người Việt tham gia hiến máu",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 28, 28, 28),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          width: 0.8,
                          color: Color.fromARGB(255, 52, 50, 50),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      height: height * 0.2 - 2,
                      width: width * 0.422,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: height * 0.06 - 8,
                            child: Center(
                              child: Icon(
                                Icons.open_in_new_off_outlined,
                                size: 40,
                                color: Color.fromARGB(255, 182, 27, 45),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.1 - 20,
                            child: Center(
                              child: Text(
                                "Mỗi lần tham gia hiến máu có thể cứu sống ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 28, 28, 28),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04,
                            child: Center(
                              child: Text(
                                "3 người",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 182, 27, 45),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const HomeEventBottomOf(),
        ],
      ),
    );
  }
}
