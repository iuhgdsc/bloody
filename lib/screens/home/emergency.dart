// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:bloody/model/Emergency_New.dart';
import 'package:bloody/model/Emergency_ToExport.dart';
import 'package:bloody/screens/home/emergencyBoodDonationDetails.dart';
import 'package:bloody/widgets/CPN_HomeEventHeader.dart';
import 'package:flutter/material.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Emergency();
  }
}

class _Emergency extends State<Emergency> with WidgetsBindingObserver {
  List<Emergency_ToExport> list_emergency = [
    Emergency_ToExport(
        id: "1",
        name: "Cần gấp máu cho nạn nhân LVd",
        image: "assets/images/huyethoc.png",
        blood_group: "Nhóm máu O, đơn vị 5",
        address: "Bệnh viện Truyền máu Huyết học Bình Dương",
        time_ago: "2 giờ trước",
        isSuitable: true,
        description: "Phù hợp với hồ sơ hiến máu của bạn",
        avatar: "assets/avatar.png"),
    Emergency_ToExport(
        id: "2",
        name: "Cần gấp máu cho bệnh nhân suy thận",
        image: "assets/images/choray.png",
        blood_group: "Nhóm máu A, đơn vị 8",
        address: "Trung tâm truyền máu Chợ Rẫy",
        time_ago: "2 giờ trước",
        isSuitable: true,
        description: "Phù hợp với hồ sơ hiến máu của bạn",
        avatar: "assets/avatar.png"),
    Emergency_ToExport(
        id: "3",
        name: "Cần gấp máu cho bệnh nhân viêm phổi",
        image: "assets/images/chuThapDo.png",
        blood_group: "Nhóm máu O, đơn vị 4",
        address: "Trung Tâm Hiến Máu Nhân Đạo Bình Dương",
        time_ago: "3 giờ trước",
        isSuitable: true,
        description: "Phù hợp với hồ sơ hiến máu của bạn",
        avatar: "assets/avatar.png"),
  ];
  List<EmergencyNew> emergencyNews = [
    EmergencyNew(
      id: "1",
      name: "Cần gấp máu cho bệnh nhân viêm phổi",
      image: "assets/images/175.png",
      blood_group: "Nhóm máu B, 4 đơn vị",
      address: "Nhóm máu B, 4 đơn vị",
      time_ago: "23 phút trước",
    ),
    EmergencyNew(
      id: "2",
      name: "Cần gấp máu cho nạn nhân LVNN",
      image: "assets/images/giaDinh.png",
      blood_group: "Nhóm máu O, 10 đơn vị",
      address: "Bệnh viện nhân dân Gia Định ...",
      time_ago: "1 giờ trước",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          CPNHomeEventHeader(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: height * 0.09,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: height * 0.035,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Đề xuất cho bạn",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 37, 37, 37),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    height: height * 0.025,
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Dựa trên thông tin hồ sơ của bạn",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 92, 92, 92),
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.4,
            child: ListView.builder(
              itemCount: list_emergency.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            Container(
                              height: height * 0.2,
                            ),
                            Expanded(
                              child: EmergencyBoodDonationDetails(),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: SizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.1,
                            color: Color.fromARGB(255, 68, 68, 68),
                          ),
                        ),
                      ),
                      child: SizedBox(
                        height: height * 0.15,
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.25,
                              height: height * 0.2,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          list_emergency[index].image)),
                                  Text(
                                    list_emergency[index].time_ago,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 59, 59, 59),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width * 0.7,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.009),
                              child: Column(
                                children: [
                                  Container(
                                    height: height * 0.04,
                                    padding: EdgeInsets.only(
                                      top: height * 0.014,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      list_emergency[index].name,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.03,
                                    padding: EdgeInsets.only(top: 3),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      list_emergency[index].blood_group,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 69, 69, 69),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.03,
                                    padding: EdgeInsets.only(top: 3),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      list_emergency[index].address,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromARGB(255, 69, 69, 69),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.05,
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: <Widget>[
                                            SizedBox(
                                              width: width * 0.1,
                                              child: Center(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                  child: SizedBox.fromSize(
                                                    child: Image(
                                                      width: 31,
                                                      height: 31,
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                        list_emergency[index]
                                                            .avatar,
                                                      ),
                                                      opacity:
                                                          const AlwaysStoppedAnimation(
                                                              1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 5,
                                              right: 0,
                                              child: Icon(
                                                Icons.check_circle,
                                                size: 15,
                                                color: Color.fromARGB(
                                                    255, 14, 104, 42),
                                              ),
                                            )
                                          ],
                                        ),
                                        Center(
                                          child: Text(
                                            "Phù hợp với hồ sơ hiến máu của bạn",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 92, 92, 92),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: height * 0.054,
              width: width * 0.86,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 182, 27, 45),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Center(
                child: Text(
                  "Xem tất cả",
                  style: TextStyle(color: Color.fromARGB(252, 225, 225, 225)),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: height * 0.05,
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Trường hợp khẩn cấp mới nhất",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w500)),
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: emergencyNews.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            Container(
                              height: height * 0.18,
                            ),
                            Expanded(child: EmergencyBoodDonationDetails())
                          ],
                        );
                      },
                    );
                  },
                  child: SizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 0.01,
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      )),
                      child: SizedBox(
                        height: height * 0.15,
                        child: Row(children: [
                          Container(
                              width: width * 0.25,
                              height: height * 0.17,
                              padding: EdgeInsets.symmetric(vertical: 11),
                              alignment: Alignment.topCenter,
                              child: Column(children: [
                                Image(
                                    image:
                                        AssetImage(emergencyNews[index].image)),
                                Text(
                                  emergencyNews[index].time_ago,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 59, 59, 59),
                                  ),
                                ),
                              ])),
                          Container(
                            width: width * 0.7,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.009),
                            child: Column(children: [
                              Container(
                                  height: height * 0.04,
                                  padding: EdgeInsets.only(
                                    top: height * 0.014,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    emergencyNews[index].name,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 38, 38, 38),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                height: height * 0.03,
                                padding: EdgeInsets.only(top: 3),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  emergencyNews[index].blood_group,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 69, 69, 69)),
                                ),
                              ),
                              Container(
                                height: height * 0.03,
                                padding: EdgeInsets.only(top: 3),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  emergencyNews[index].address,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 69, 69, 69)),
                                ),
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),
                  ),
                );
              }),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: height * 0.054,
              width: width * 0.86,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 182, 27, 45),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Center(
                child: Text(
                  "Xem tất cả",
                  style: TextStyle(color: Color.fromARGB(252, 225, 225, 225)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
