import 'dart:async';
import 'package:bloody/blocs/bloc_event/event_cubit.dart';
import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/widgets/cpn_home_event_header.dart';
import 'package:bloody/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/home_event_bottom_of.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Event();
  }
}

class _Event extends State<Event> with WidgetsBindingObserver {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  bool end = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
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
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
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
          const CPNHomeEventHeader(),
          BlocBuilder<EventCubit, EventState>(
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
                final List<CenterBlood> centerBloods = state.events;
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: height * 0.23,
                  child: PageView.builder(
                      controller: _pageController,
                      itemCount: centerBloods.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.8,
                              color: const Color.fromARGB(255, 52, 50, 50),
                            ),
                            borderRadius: const BorderRadius.all(
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 11),
                                      alignment: Alignment.center,
                                      child: Image.network(
                                        centerBloods[index].image!,
                                        fit: BoxFit.cover,
                                      ),
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
                                              centerBloods[index].name!,
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.06,
                                            padding:
                                                const EdgeInsets.only(top: 3),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: width * 0.09,
                                                  height: height * 0.06,
                                                  alignment: Alignment.topLeft,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: const Icon(
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
                                                    centerBloods[index]
                                                        .address!,
                                                    style: const TextStyle(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: const Icon(
                                                    Icons.date_range,
                                                    size: 30,
                                                    color: Color.fromARGB(
                                                        255, 109, 109, 109),
                                                  ),
                                                ),
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  width: width * 0.47,
                                                  child: Text(
                                                    centerBloods[index].date!,
                                                    style: const TextStyle(
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
                                    GoRouter.of(context).pushNamed(
                                      MyAppRouteConstants.addressBloodGr,
                                      extra: centerBloods[index],
                                    );
                                  },
                                  child: const Btn(text: "Join")),
                            ],
                          ),
                        ));
                      }),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: height * 0.255,
            color: const Color.fromARGB(255, 255, 237, 235),
            child: Center(
              child: Container(
                height: height * 0.2,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          width: 0.8,
                          color: const Color.fromARGB(255, 52, 50, 50),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      height: height * 0.2 - 2,
                      width: width * 0.422,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: height * 0.06 - 8,
                            child: const Center(
                              child: Icon(
                                Icons.info_outline,
                                size: 40,
                                color: Color.fromARGB(255, 182, 27, 45),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04 - 13,
                            child: const Center(
                              child: Text(
                                "Only",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 28, 28, 28),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04,
                            child: const Center(
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Center(
                              child: Text(
                                "Vietnamese people donate blood",
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
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          width: 0.8,
                          color: const Color.fromARGB(255, 52, 50, 50),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      height: height * 0.2 - 2,
                      width: width * 0.422,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: height * 0.06 - 8,
                            child: const Center(
                              child: Icon(
                                Icons.open_in_new_off_outlined,
                                size: 40,
                                color: Color.fromARGB(255, 182, 27, 45),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.1 - 20,
                            child: const Center(
                              child: Text(
                                "Every time you participate in blood donation, you can save a life",
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
                            child: const Center(
                              child: Text(
                                "3 people",
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
