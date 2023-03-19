import 'package:bloody/blocs/bloc_event_of_user/event_of_user_cubit.dart';
import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/model/user.dart';
import 'package:bloody/widgets/btn_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  late User user;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state is LoginLoaded) {
            user = state.user;
          }
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              bottomOpacity: 0.0,
              elevation: 0.0,
              title: const Text(
                "Lịch sử hiến máu",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
            body: BlocBuilder<EventOfUserCubit, EventOfUserState>(
                builder: (context, state) {
              if (state is EventOfUserInitial) {
                context
                    .read<EventOfUserCubit>()
                    .getEventRegisOfUSer(user.phone!);
              }
              if (state is EventOfUserLoaded) {
                final listMessage = state.eventUsers;
                if (listMessage.isEmpty) {
                  return const Center(
                    child: Text("Bạn chưa từng đăng ký hiến máu nào"),
                  );
                }
                return ListView.builder(
                  itemCount: listMessage.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: const EdgeInsets.only(top: 15),
                                    width: width,
                                    child: SizedBox(
                                      width: width,
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Center(
                                                      child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: const Text(
                                                      "Chi tiết sự kiện",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromARGB(
                                                              255, 43, 43, 43)),
                                                    ),
                                                  )),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Icon(
                                                    Icons.close,
                                                    size: 25,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 1,
                                            color: const Color.fromARGB(
                                                255, 112, 112, 112),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                top: 20,
                                                bottom: 15),
                                            child: Row(
                                              children: [
                                                const Expanded(
                                                    child: Text(
                                                  "Trạng thái",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 10, 10, 10)),
                                                )),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromARGB(
                                                      255,
                                                      54,
                                                      204,
                                                      123,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                  ),
                                                  child: const Text(
                                                    "Đã đăng ký",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                bottom: 15),
                                            child: Row(
                                              children: [
                                                const Expanded(
                                                    child: Text(
                                                  "Đơn vị",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 10, 10, 10)),
                                                )),
                                                SizedBox(
                                                  width: width * 0.4,
                                                  child: Flexible(
                                                    child: Text(
                                                      listMessage[index]
                                                          .centerBlood!
                                                          .address!,
                                                      maxLines: 3,
                                                      softWrap: false,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.end,
                                                      style: const TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromARGB(
                                                              255, 35, 35, 35)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                bottom: 15),
                                            child: Row(
                                              children: [
                                                const Expanded(
                                                    child: Text(
                                                  "Địa chỉ",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 10, 10, 10)),
                                                )),
                                                Flexible(
                                                  child: Text(
                                                    listMessage[index]
                                                        .centerBlood!
                                                        .address!,
                                                    maxLines: 4,
                                                    softWrap: false,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.end,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                bottom: 15),
                                            child: Row(
                                              children: [
                                                const Expanded(
                                                    child: Text(
                                                  "Thời gian",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 10, 10, 10)),
                                                )),
                                                Text(
                                                  "${listMessage[index].timeChoose!} - ${listMessage[index].centerBlood!.date!}",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 48, 48, 48)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          const BtnContact(
                                              text: "Liên hệ hỗ trợ"),
                                          BtnContact(
                                              text: "Hủy đăng kí",
                                              phone: listMessage[index]
                                                  .user!
                                                  .phone!,
                                              id: listMessage[index].id!),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  )
                                ],
                              )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                width: 1,
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: Image(
                                image: Image.network(
                                        listMessage[index].centerBlood!.image!)
                                    .image),
                            title:
                                Text(listMessage[index].centerBlood!.address!),
                            subtitle: Text(listMessage[index].description!),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Text("Bạn chưa đăng ký sự kiện nào"),
                );
              }
            }),
          );
        },
      ),
    );
  }
}
