import 'package:bloody/blocs/bloc_emergency/emergency_cubit.dart';
import 'package:bloody/model/emergency.dart';
import 'package:bloody/screens/emergency/emergency_bood_donation_details.dart';
import 'package:bloody/widgets/cpn_home_event_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmergencyHome extends StatefulWidget {
  const EmergencyHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Emergency();
  }
}

class _Emergency extends State<EmergencyHome> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          const CPNHomeEventHeader(),
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
          BlocBuilder<EmergencyCubit, EmergencyState>(
            builder: (context, state) {
              if (state is EmergencyInitial) {
                context.read<EmergencyCubit>().getEmergencys();
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is EmergencyLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is EmergencyError) {
                return Text(state.message.toString());
              } else if (state is EmergencyLoaded) {
                final List<Emergency> list = state.emergencies;
                List<Emergency> emergencyEvents = [];
                for (var element in list) {
                  if (element.isNew == false) {
                    emergencyEvents.add(Emergency(
                      avatar: element.avatar,
                      name: element.name,
                      address: element.address,
                      bloodGroup: element.bloodGroup,
                      description: element.description,
                      id: element.id,
                      image: element.image,
                      isSuitable: element.isSuitable,
                      timeAgo: element.timeAgo,
                      isNew: element.isNew,
                    ));
                  }
                }
                return Column(children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: emergencyEvents.length,
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
                                    child: EmergencyBoodDonationDetails(
                                        emergency: emergencyEvents[index]),
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 11),
                                    alignment: Alignment.topCenter,
                                    child: Column(
                                      children: [
                                        Image.network(
                                          height: 75,
                                          emergencyEvents[index].image!,
                                        ),
                                        Text(
                                          emergencyEvents[index].timeAgo!,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            color:
                                                Color.fromARGB(255, 59, 59, 59),
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
                                            emergencyEvents[index].name!,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 38, 38),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            emergencyEvents[index].bloodGroup!,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 69, 69, 69),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            emergencyEvents[index].address!,
                                            style: const TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 69, 69, 69),
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
                                                            BorderRadius
                                                                .circular(23),
                                                        child:
                                                            SizedBox.fromSize(
                                                          child: Image(
                                                            width: 31,
                                                            height: 31,
                                                            fit: BoxFit.cover,
                                                            image: NetworkImage(
                                                                emergencyEvents[
                                                                        index]
                                                                    .avatar!),
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
                ]);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
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
          BlocBuilder<EmergencyCubit, EmergencyState>(
            builder: (context, state) {
              if (state is EmergencyInitial) {
                context.read<EmergencyCubit>().getEmergencys();
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is EmergencyLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is EmergencyError) {
                return Text(state.message.toString());
              } else if (state is EmergencyLoaded) {
                final List<Emergency> list = state.emergencies;
                List<Emergency> emergencyNews = [];
                for (var element in list) {
                  if (element.isNew == true) {
                    emergencyNews.add(Emergency(
                      avatar: element.avatar,
                      name: element.name,
                      address: element.address,
                      bloodGroup: element.bloodGroup,
                      description: element.description,
                      id: element.id,
                      image: element.image,
                      isSuitable: element.isSuitable,
                      timeAgo: element.timeAgo,
                      isNew: element.isNew,
                    ));
                  }
                }
                return ListView.builder(
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
                              Emergency emergency = Emergency(
                                id: emergencyNews[index].id,
                                name: emergencyNews[index].name,
                                address: emergencyNews[index].address,
                                bloodGroup: emergencyNews[index].bloodGroup,
                                image: emergencyNews[index].image,
                                timeAgo: emergencyNews[index].timeAgo,
                              );
                              return Column(
                                children: [
                                  Container(
                                    height: height * 0.18,
                                  ),
                                  Expanded(
                                      child: EmergencyBoodDonationDetails(
                                    emergency: emergency,
                                  ))
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 11),
                                    alignment: Alignment.topCenter,
                                    child: Column(children: [
                                      Image.network(
                                        height: 75,
                                        emergencyNews[index].image!,
                                      ),
                                      Text(
                                        emergencyNews[index].timeAgo!,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromARGB(255, 59, 59, 59),
                                        ),
                                      ),
                                    ])),
                                Container(
                                  width: width * 0.7,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009),
                                  child: Column(children: [
                                    Container(
                                        height: height * 0.04,
                                        padding: EdgeInsets.only(
                                          top: height * 0.014,
                                        ),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          emergencyNews[index].name!,
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 38, 38, 38),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    Container(
                                      height: height * 0.03,
                                      padding: const EdgeInsets.only(top: 3),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        emergencyNews[index].bloodGroup!,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 69, 69, 69)),
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.03,
                                      padding: const EdgeInsets.only(top: 3),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        emergencyNews[index].address!,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                255, 69, 69, 69)),
                                      ),
                                    ),
                                  ]),
                                )
                              ]),
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
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
