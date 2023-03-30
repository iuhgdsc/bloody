import 'package:bloody/blocs/bloc_event/event_cubit.dart';
import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/widgets/cpn_home_event_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  TextEditingController textEditingController = TextEditingController();

  List<CenterBlood> _foundDay = [];

  // late StreamSubscription<bool> keyboardSubscription;
  late List<CenterBlood> centerBloods;

  // ham de search
  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<CenterBlood> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = [];
    } else {
      results = centerBloods
          .where((blood) => blood.name
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
    return BlocBuilder<EventCubit, EventState>(
      builder: (context, state) {
        if (state is EventInitial) {
          context.read<EventCubit>().getEvents();
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is EventLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is EventError) {
          return Text(state.message.toString());
        } else if (state is EventLoaded) {
          centerBloods = state.events;
        }
        return Scaffold(
            body: Container(
          margin: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        top: 35, left: 20, right: 20, bottom: 2),
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
                          child: TextFormField(
                            onChanged: (value) {
                              _runFilter(value);
                            },
                            controller: textEditingController,
                            autofocus: true,
                            decoration: const InputDecoration(
                              hintText: "Find events here",
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 237, 235),
                          border: Border.all(
                            width: 0.8,
                            color: const Color.fromARGB(255, 61, 61, 61),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(children: const [
                          Center(
                            child: Icon(Icons.date_range_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 182, 27, 45)),
                          ),
                          Center(
                            child: Text("Time",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 182, 27, 45),
                                    fontWeight: FontWeight.w500)),
                          )
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 237, 235),
                          border: Border.all(
                            width: 0.8,
                            color: const Color.fromARGB(255, 61, 61, 61),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(children: const [
                          Center(
                            child: Icon(Icons.group_work_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 182, 27, 45)),
                          ),
                          Center(
                            child: Text("Blood group",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 182, 27, 45),
                                    fontWeight: FontWeight.w500)),
                          )
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 237, 235),
                          border: Border.all(
                            width: 0.8,
                            color: const Color.fromARGB(255, 61, 61, 61),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(children: const [
                          Center(
                            child: Icon(Icons.horizontal_split,
                                size: 30,
                                color: Color.fromARGB(255, 182, 27, 45)),
                          ),
                          Center(
                            child: Text("Hospital",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 182, 27, 45),
                                    fontWeight: FontWeight.w500)),
                          )
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 237, 235),
                          border: Border.all(
                            width: 0.8,
                            color: const Color.fromARGB(255, 61, 61, 61),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          children: const [
                            Center(
                              child: Icon(Icons.date_range_outlined,
                                  size: 30,
                                  color: Color.fromARGB(255, 182, 27, 45)),
                            ),
                            Center(
                              child: Text("Time",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 182, 27, 45),
                                      fontWeight: FontWeight.w500)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _runFilter(textEditingController.text);
                  },
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
                        "Search",
                        style: TextStyle(
                            color: Color.fromARGB(252, 225, 225, 225)),
                      ),
                    ),
                  ),
                ),

                //display list
                ListView(
                  shrinkWrap: true,
                  children: List.generate(_foundDay.length, (index) {
                    return Container(
                      height: 90,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_foundDay[index].name.toString()),
                          Text(_foundDay[index].address.toString()),
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
