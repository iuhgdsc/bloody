import 'dart:async';

import 'package:bloody/widgets/cpn_home_event_header.dart';
import 'package:flutter/material.dart';
import 'package:bloody/model/blood_banner.dart';

class SearchAdvanced extends StatefulWidget {
  const SearchAdvanced({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SearchAdvanced();
  }
}

class _SearchAdvanced extends State<SearchAdvanced>
    with WidgetsBindingObserver {
  // ignore: prefer_final_fields
  // ham de search
  List<CenterBlood> _centerBloods = [
    CenterBlood(
        id: "1",
        name: "Trung tâm Truyền máu Chợ Rẫy",
        image: "assets/images/choray.png",
        address: "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
        date:
            "${DateTime.now().year.toString()}-${DateTime.now().month.toString()}-${DateTime.now().day.toString()}",
        isJoined: false),
    CenterBlood(
        id: "2",
        name: "Trung tâm Truyền máu 2",
        image: "assets/images/175.png",
        address: "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
        date:
            "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}",
        isJoined: false),
    CenterBlood(
        id: "3",
        name: "Trung tâm Truyền máu 3",
        image: "assets/images/huyethoc.png",
        address: "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
        date:
            "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}",
        isJoined: false),
  ];

  List<CenterBlood> _foundDay = [];

  late StreamSubscription<bool> keyboardSubscription;

  @override
  initState() {
    _foundDay = _centerBloods;
    super.initState();
  }

  // ham de search
  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<CenterBlood> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _centerBloods;
    } else {
      results = _centerBloods
          .where((blood) => blood.date
              .toString()
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    setState(() {
      _foundDay = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(children: [
        Container(
            margin:
                const EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 2),
            height: 50,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 3, right: 15),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30.0,
                    color: Color.fromARGB(255, 19, 19, 19),
                  ),
                ),
                SizedBox(
                    width: width - 100,
                    child: TextField(
                      onChanged: (value) => _runFilter(value),
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText: "Tìm kiếm sự kiện tại đây",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 19, 19, 19),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    )),
              ],
            )),
        Container(
          height: 0.5,
          color: const Color.fromARGB(255, 181, 181, 181),
        ),
        const CPNHomeEventHeader(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 237, 235),
                border: Border.all(
                  width: 0.8,
                  color: const Color.fromARGB(255, 61, 61, 61),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(children: const [
                Center(
                  child: Icon(Icons.date_range_outlined,
                      size: 30, color: Color.fromARGB(255, 182, 27, 45)),
                ),
                Center(
                  child: Text("Thời gian",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 182, 27, 45),
                          fontWeight: FontWeight.w500)),
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 237, 235),
                border: Border.all(
                  width: 0.8,
                  color: const Color.fromARGB(255, 61, 61, 61),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(children: const [
                Center(
                  child: Icon(Icons.group_work_outlined,
                      size: 30, color: Color.fromARGB(255, 182, 27, 45)),
                ),
                Center(
                  child: Text("Nhóm máu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 182, 27, 45),
                          fontWeight: FontWeight.w500)),
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 237, 235),
                border: Border.all(
                  width: 0.8,
                  color: const Color.fromARGB(255, 61, 61, 61),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(children: const [
                Center(
                  child: Icon(Icons.horizontal_split,
                      size: 30, color: Color.fromARGB(255, 182, 27, 45)),
                ),
                Center(
                  child: Text("Bệnh viện",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 182, 27, 45),
                          fontWeight: FontWeight.w500)),
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 237, 235),
                border: Border.all(
                  width: 0.8,
                  color: const Color.fromARGB(255, 61, 61, 61),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(children: const [
                Center(
                  child: Icon(Icons.date_range_outlined,
                      size: 30, color: Color.fromARGB(255, 182, 27, 45)),
                ),
                Center(
                  child: Text("Thời gian",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 182, 27, 45),
                          fontWeight: FontWeight.w500)),
                )
              ]),
            ),
          ]),
        ),
        MediaQuery.of(context).viewInsets.bottom == 0
            ? ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _foundDay.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height: 100,
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      color: Color.fromARGB(255, 177, 255, 254),
                      child: Column(
                        children: [
                          Text(_foundDay[index].id.toString()),
                          Text(_foundDay[index].name.toString()),
                          Text(_foundDay[index].address.toString()),
                          Text(_foundDay[index].date.toString()),
                        ],
                      ));
                })
            : Text("ban phim dang bat len "),
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
                  "Tìm kiếm",
                  style: TextStyle(color: Color.fromARGB(252, 225, 225, 225)),
                ),
              )),
        )
      ]),
    ));
  }
}
