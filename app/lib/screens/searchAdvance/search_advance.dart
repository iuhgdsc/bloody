import 'package:bloody/model/SearchAdvance/option_search.dart';
import 'package:bloody/widgets/cpn_home_event_header.dart';
import 'package:flutter/material.dart';

class SearchAdvanced extends StatefulWidget {
  const SearchAdvanced({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SearchAdvanced();
  }
}

class _SearchAdvanced extends State<SearchAdvanced>
    with WidgetsBindingObserver {
  List<OptionSearch> optionSearch = [
    OptionSearch(id: "1", name: "dwewd", icon: "fefe"),
    OptionSearch(id: "2", name: "efefe", icon: "efef"),
    OptionSearch(id: "3", name: "efer", icon: "rferfe"),
    OptionSearch(id: "4", name: "fefe", icon: "efe"),
  ];
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
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Tìm kiếm sự kiện tại đây",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 19, 19, 19),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
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
              child: Column(
                children: const [
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
                ],
              ),
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
        const SizedBox(
          height: 50,
        ),
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
