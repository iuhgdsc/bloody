import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/blocs/bloc_message/message_cubit.dart';
import 'package:bloody/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  late User user;
  @override
  Widget build(BuildContext context) {
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
                "Announcement nearby",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
            body: BlocBuilder<MessageCubit, MessageState>(
              builder: (context, state) {
                if (state is MessageLoaded) {
                  final messages = state.messages;
                  return ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      String timeDisplay = "";
                      DateTime currentTime = DateTime.now();

                      if (messages[index].createdAt != null) {
                        Duration timeDiff =
                            currentTime.difference(messages[index].createdAt!);
                        if (timeDiff.inDays > 0) {
                          timeDisplay =
                              messages[index].createdAt!.toLocal().toString();
                        } else {
                          if (timeDiff.inHours > 0) {
                            timeDisplay = "${timeDiff.inHours}h ago";
                          } else if (timeDiff.inMinutes > 0) {
                            timeDisplay = "${timeDiff.inMinutes}m ago";
                          } else {
                            timeDisplay = "just now";
                          }
                        }
                      }

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                width: 4,
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: Image(
                                image: Image.network(
                                        "https://res.cloudinary.com/kuga/image/upload/v1679105887/bloody/Vector_w7m9qe.png")
                                    .image),
                            title: Text(
                              messages[index].title!,
                              style: const TextStyle(
                                color: Color(0xff333335),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  messages[index].body!,
                                  style: const TextStyle(
                                    color: Color(0xff333335),
                                  ),
                                  maxLines: 3,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  timeDisplay,
                                  style: const TextStyle(
                                    color: Color(0xff79747E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: Text("Loading..."),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
