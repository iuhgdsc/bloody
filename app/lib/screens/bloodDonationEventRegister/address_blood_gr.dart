import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:bloody/model/blood_banner.dart';
import 'package:go_router/go_router.dart';

class AddressBloodGr extends StatefulWidget {
  const AddressBloodGr({super.key, required this.centerBlood});
  final CenterBlood centerBlood;
  @override
  State<StatefulWidget> createState() {
    return _AddressBloodGr();
  }
}

class _AddressBloodGr extends State<AddressBloodGr>
    with WidgetsBindingObserver {
  List<String> bloodGroup = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];

  List<String> times = [
    "7:00-7:30",
    "7:30-8:00",
    "8:00-8:30",
    "8:30-9:00",
    "9:00-9:30",
    "9:30-10:00",
    "10:00-10:30",
    "10:30-11:00",
    "13:30-14:00",
    "14:00-14:30",
    "14:30-15:00",
    "15:00-15:30",
    "15:30-16:00"
  ];

  String timeChoose = "";
  @override
  Widget build(BuildContext context) {
    CenterBlood centerBlood = widget.centerBlood;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
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
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 23),
                          child: const Center(
                            child: Text(
                              "Thời gian và địa điểm ",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 41, 41, 41),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.13,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Text(
                    "${centerBlood.name!}\n${centerBlood.address!}\nNgày: ${centerBlood.date!}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      height: 1.1,
                      fontSize: 15,
                      color: Color.fromARGB(255, 41, 41, 41),
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(150, 232, 232, 232),
                  thickness: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: const Text(
                    "Nhóm máu cần hiến",
                    style: TextStyle(
                      height: 1.5,
                      color: Color.fromARGB(255, 16, 16, 16),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.135,
                  child: Wrap(
                    children: List.generate(
                      bloodGroup.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 30,
                        ),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            color: Color(0xFFB61B2D),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Center(
                            child: Text(
                              bloodGroup[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(150, 232, 232, 232),
                  thickness: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: const Text(
                    "Chọn khung giờ tham gia",
                    style: TextStyle(
                      height: 1.5,
                      color: Color.fromARGB(255, 16, 16, 16),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                IntrinsicHeight(
                  child: SizedBox(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: List.generate(
                        times.length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 30,
                          ),
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: timeChoose == times[index].toString()
                                ? Colors.red
                                : Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7.0)),
                            border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                timeChoose = times[index].toString();
                              });
                            },
                            child: Center(
                              child: Text(
                                times[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 16, 16, 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed(MyAppRouteConstants.qaRoute,
                        extra: centerBlood, queryParams: {"time": timeChoose});
                  },
                  child: const Btn(text: "Tham gia"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
