import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:bloody/screens/bloodDonationEventRegister/address_blood_gr.dart';

class EmergencyBoodDonationDetails extends StatefulWidget {
  const EmergencyBoodDonationDetails({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EmergencyBoodDonationDetails();
  }
}

class _EmergencyBoodDonationDetails extends State<EmergencyBoodDonationDetails>
    with WidgetsBindingObserver {
  final textData = [
    "Bác XXX XXX sinh 19xx. Hiện đang điều trị tại BV Đa Khoa Thủ Đức (BV Việt Thắng) Khoa Hồi sức tích cực trong tình trạng viêm phổi, suy gan, thận, chảy máu không cầm được.",
    "Hiến sáng mai 10/10 tại BV Truyền máu huyết học. Yêu cầu: Nhóm máu AB, trên 50kg và sức khỏe tốt.",
  ];
  @override
  Widget build(BuildContext context) {
    final markDownData = textData.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.065,
                child: Row(children: [
                  SizedBox(
                    width: width * 0.12,
                    child: const Center(
                      child: Image(
                        image: AssetImage('assets/back.png'),
                        width: 20,
                        height: 20,
                        color: Color.fromARGB(255, 16, 16, 16),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 23),
                      child: const Center(
                          child: Text("Thông tin chi tiết",
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 41, 41, 41),
                                  fontWeight: FontWeight.w600))),
                    ),
                  )
                ]),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: height * 0.03,
                  width: width * 0.85,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: width * 0.21,
                        child: const Text("Nhu cầu:",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 16, 16, 16),
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text("Nhóm máu AB, 3 đơn vị",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 23, 23, 23),
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: width * 0.075),
                  height: height * 0.06,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: width * 0.21,
                        child: const Text("Địa điểm: ",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 16, 16, 16),
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                            "Trung Tâm Hiến Máu Nhân Đạo Tp.HCM\n 12 Nguyễn Văn Bảo, Phường 4, Gò Vấp ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 23, 23, 23),
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w400)),
                      )
                    ],
                  )),
              SizedBox(
                  height: height * 0.03,
                  width: width * 0.85,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: width * 0.21,
                        child: const Text("Liên hệ:",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 16, 16, 16),
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text("0982 001 737 (Mai Hoàng)",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 23, 23, 23),
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      )
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: height * 0.03,
                  width: width * 0.85,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: width * 0.21,
                        child: const Text("Mô tả:",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 16, 16, 16),
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: width * 0.075),
                  height: height * 0.19,
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          width: width * 0.9,
                          child: Markdown(
                            data: markDownData,
                          )),
                    ],
                  )),
              Container(
                height: 10,
                color: const Color.fromARGB(150, 232, 232, 232),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/map.png',
                  ),
                  opacity: AlwaysStoppedAnimation(1),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // GoRouter.of(context)
                  //     .pushNamed(MyAppRouteConstants.donation1RouteName);

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => AddressBloodGr(
                  //       centerBlood: null,
                  //     ),
                  //   ),
                  // );
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 15),
                    height: height * 0.054,
                    width: width * 0.86,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 182, 27, 45),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: const Center(
                      child: Text(
                        "Tham gia",
                        style: TextStyle(
                            color: Color.fromARGB(252, 225, 225, 225)),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
