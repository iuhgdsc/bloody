import 'package:bloody/screens/bloodDonationEventRegister/qa.dart';
import 'package:flutter/material.dart';

class AddressBloodGr extends StatefulWidget {
  const AddressBloodGr({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddressBloodGr();
  }
}

class _AddressBloodGr extends State<AddressBloodGr>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    List<String> bloodGroup = [
      "A+",
      "A-",
      "B+",
      "B-",
      "AB+",
      "AB-",
      "O+",
      "O-"
    ];

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.055,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          width: width * 0.12,
                          child: Center(
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
                          margin: EdgeInsets.only(right: 23),
                          child: Center(
                              child: Text("Thời gian và địa điểm ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 41, 41, 41),
                                      fontWeight: FontWeight.w600))),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.11,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Text(
                      "Trung Tâm Hiến Máu Nhân Đạo Tp.HCM \n106 Thiên Phước, Phường 9, Tân Bình, TP.HCM \nNgày 10/10/2022 ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.1,
                        fontSize: 15,
                        color: Color.fromARGB(255, 41, 41, 41),
                      )),
                ),
                Divider(
                  color: Color.fromARGB(150, 232, 232, 232),
                  thickness: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  child: Text(
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
                  height: height * 0.17,
                  child: Wrap(
                    children: List.generate(
                      bloodGroup.length,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 30,
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFB61B2D),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Center(
                            child: Text(
                              bloodGroup[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Color.fromARGB(150, 232, 232, 232),
                  thickness: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: Text(
                    "Chọn khung giờ tham gia",
                    style: TextStyle(
                      height: 1.5,
                      color: Color.fromARGB(255, 16, 16, 16),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.41,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      times.length,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 30,
                        ),
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                            border: Border.all(
                              color: Color.fromARGB(255, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              times[index],
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QA(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB61B2D),
                      minimumSize: const Size(double.infinity, 40),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Đăng ký",
                        style: TextStyle(
                          color: Colors.white,
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
    );
  }
}
