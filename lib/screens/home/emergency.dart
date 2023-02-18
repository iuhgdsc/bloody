import 'package:bloody/widgets/cpn_home_event_header.dart';
import 'package:flutter/material.dart';

import '../../model/Emergency/Emergency_New.dart';
import '../../model/Emergency/emergency_to_export.dart';
import '../emergency/emergencyBoodDonation_Details.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Emergency();
  }
}

class _Emergency extends State<Emergency> with WidgetsBindingObserver {
  List<EmergencyToExport> emergencyToExport = [
    EmergencyToExport(
        id: "1",
        name: "Cần gấp máu cho nạn nhân LVN",
        image: "https://i.imgur.com/100Wcl6.png",
        bloodGroup: "Nhóm máu O, đơn vị 5",
        address: "Bệnh viện Truyền máu Huyết học Bình Dương",
        timeAgo: "2 giờ trước",
        isSuitable: true,
        description: "Phù hợp với hồ sơ hiến máu của bạn",
        avatar: "assets/avatar.png"),
    EmergencyToExport(
        id: "2",
        name: "Cần gấp máu cho bệnh nhân suy thận",
        image: "https://i.imgur.com/86gCaQu.png",
        bloodGroup: "Nhóm máu A, đơn vị 8",
        address: "Trung tâm truyền máu Chợ Rẫy",
        timeAgo: "2 giờ trước",
        isSuitable: true,
        description: "Phù hợp với hồ sơ hiến máu của bạn",
        avatar: "assets/avatar.png"),
    EmergencyToExport(
        id: "3",
        name: "Cần gấp máu cho bệnh nhân viêm phổi",
        image: "https://i.imgur.com/cXaAIrq.png",
        bloodGroup: "Nhóm máu O, đơn vị 4",
        address: "Trung Tâm Hiến Máu Nhân Đạo Bình Dương",
        timeAgo: "3 giờ trước",
        isSuitable: true,
        description: "Phù hợp với hồ sơ hiến máu của bạn",
        avatar: "assets/avatar.png"),
  ];
  List<EmergencyNew> emergencyNews = [
    EmergencyNew(
      id: "1",
      name: "Cần gấp máu cho bệnh nhân viêm phổi",
      image: "https://i.imgur.com/gZejUZc.png",
      bloodGroup: "Nhóm máu B, 4 đơn vị",
      address: "Nhóm máu B, 4 đơn vị",
      timeAgo: "23 phút trước",
    ),
    EmergencyNew(
      id: "2",
      name: "Cần gấp máu cho nạn nhân LVNN",
      image: "https://i.imgur.com/g585Iv9.png",
      bloodGroup: "Nhóm máu O, 10 đơn vị",
      address: "Bệnh viện nhân dân Gia Định ...",
      timeAgo: "1 giờ trước",
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
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: height * 0.09,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: height * 0.035,
                    alignment: Alignment.centerLeft,
                    child: const Text(
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
                    child: const Text(
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
          Column(children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: emergencyToExport.length,
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
                            const Expanded(
                              child: EmergencyBoodDonationDetails(),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: SizedBox(
                    child: Container(
                      decoration: const BoxDecoration(
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
                              height: height * 0.17,
                              padding: const EdgeInsets.symmetric(vertical: 11),
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  Image.network(
                                    height: 75,
                                    emergencyToExport[index].image,
                                  ),
                                  Text(
                                    emergencyToExport[index].timeAgo,
                                    style: const TextStyle(
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
                                      emergencyToExport[index].name,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.03,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      emergencyToExport[index].bloodGroup,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 69, 69, 69),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.03,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      emergencyToExport[index].address,
                                      style: const TextStyle(
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
                                                        emergencyToExport[index]
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
                                            const Positioned(
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
                                        const Center(
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
          ]),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              height: height * 0.054,
              width: width * 0.86,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 182, 27, 45),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: const Center(
                child: Text(
                  "Xem tất cả",
                  style: TextStyle(color: Color.fromARGB(252, 225, 225, 225)),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: height * 0.05,
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text("Trường hợp khẩn cấp mới nhất",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 37, 37, 37),
                      fontWeight: FontWeight.w500)),
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
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
                            const Expanded(
                                child: EmergencyBoodDonationDetails())
                          ],
                        );
                      },
                    );
                  },
                  child: SizedBox(
                    child: Container(
                      decoration: const BoxDecoration(
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
                              padding: const EdgeInsets.symmetric(vertical: 11),
                              alignment: Alignment.topCenter,
                              child: Column(children: [
                                Image.network(
                                  height: 75,
                                  emergencyNews[index].image,
                                ),
                                Text(
                                  emergencyNews[index].timeAgo,
                                  style: const TextStyle(
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
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 38, 38, 38),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                height: height * 0.03,
                                padding: const EdgeInsets.only(top: 3),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  emergencyNews[index].bloodGroup,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 69, 69, 69)),
                                ),
                              ),
                              Container(
                                height: height * 0.03,
                                padding: const EdgeInsets.only(top: 3),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  emergencyNews[index].address,
                                  style: const TextStyle(
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
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              height: height * 0.054,
              width: width * 0.86,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 182, 27, 45),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: const Center(
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
