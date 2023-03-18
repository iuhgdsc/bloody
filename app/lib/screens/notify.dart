import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/model/user.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  late User user;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print(
          'A new onMessage event was published with message: ${message.notification!.body}');
    });
  }

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
                "Thông báo gần đấy",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Container(
                height: 100,
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
                              "https://res.cloudinary.com/kuga/image/upload/v1679105887/bloody/Vector_w7m9qe.png")
                          .image),
                  title: const Text(
                    "Thông báo hoàn thành hiến máu",
                    style: TextStyle(
                      color: Color(0xff333335),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Cảm ơn Hoàng đã tham gia hiến máu tình nguyện ngày 01/10/2022 tại Điểm hiến ...",
                        style: TextStyle(
                          color: Color(0xff333335),
                        ),
                        maxLines: 3,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "47 phút trước",
                        style: TextStyle(
                          color: Color(0xff79747E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
