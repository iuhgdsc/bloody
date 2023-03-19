import 'package:bloody/blocs/bloc_message/message_cubit.dart';
import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, required this.user});
  final User user;

  @override
  State<StatefulWidget> createState() {
    return _Profile();
  }
}

class _Profile extends State<Profile> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    User user = widget.user;
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close,
                        size: 20,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Tài khoản",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(23),
                      child: SizedBox.fromSize(
                        child: const Image(
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/avatar.png',
                          ),
                          opacity: AlwaysStoppedAnimation(1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            user.name!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text("Đã xác thực"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .pushNamed(MyAppRouteConstants.personRouteName);
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios_sharp,
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.notifications,
                                  color: Color(0xFF79747E),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 8,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Expanded(
                            child: Text(
                              "Thông báo",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF333335),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              bool rs = await context
                                  .read<MessageCubit>()
                                  .loadMessages(user.phone!);
                              if (rs) {
                                // ignore: use_build_context_synchronously
                                GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.notifyRouteName);
                              }
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios_sharp,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xFF79747E),
                      thickness: 1,
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.settings_outlined,
                              color: Color(0xFF79747E),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Thiết lập",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF333335),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xFF79747E),
                      thickness: 1,
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.logout,
                              color: Color(0xFF79747E),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Đăng xuất",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF333335),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
