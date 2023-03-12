import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);
  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  late User userExisting;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state is LoginLoaded) {
          userExisting = state.user;
        }
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 71,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    IconButton(
                      onPressed: () => {
                        GoRouter.of(context)
                            .pushNamed(MyAppRouteConstants.homeRouteName)
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left_outlined,
                        size: 30,
                      ),
                      color: const Color(0xFF333335),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Thông tin tài khoản",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image 12.png"),
                  radius: 60,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 210,
                  child: Center(
                    child: Text(
                      userExisting.name ?? "Nguyễn Việt Hoàng",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 39,
                        ),
                        Text(
                          "Họ và tên",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 90,
                        ),
                        SizedBox(
                          width: 230,
                          child: Text(
                            userExisting.name ?? "Nguyễn Việt Hoàng",
                            style: const TextStyle(
                                color: Color(0xFF717171),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFB61B2D),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0) //
                                    ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit_outlined),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 370,
                      child: Center(
                        child: Container(
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 39,
                          ),
                          Text(
                            "Số điện thoại",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 90,
                          ),
                          SizedBox(
                            width: 230,
                            child: Text(
                              userExisting.phone ?? "Chưa xác thực",
                              style: const TextStyle(
                                  color: Color(0xFF717171),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFB61B2D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0) //
                                      ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_outlined),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 370,
                        child: Center(
                          child: Container(
                            height: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 39,
                          ),
                          Text(
                            "CMND/CCCD",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 90,
                          ),
                          SizedBox(
                            width: 230,
                            child: Text(
                              userExisting.cccd ?? "Chưa xác thực",
                              style: const TextStyle(
                                  color: Color(0xFF717171),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFB61B2D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0) //
                                      ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_outlined),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 370,
                        child: Center(
                          child: Container(
                            height: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 39,
                          ),
                          Text(
                            "Địa chỉ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 90,
                          ),
                          SizedBox(
                            width: 230,
                            child: Text(
                              userExisting.address ?? "Chưa xác thực",
                              style: const TextStyle(
                                  color: Color(0xFF717171),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFB61B2D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0) //
                                      ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_outlined),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 370,
                        child: Center(
                          child: Container(
                            height: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 39,
                          ),
                          Text(
                            "Xác thực khuôn mặt",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 90,
                          ),
                          const SizedBox(
                            width: 230,
                            child: Text(
                              "Chưa thiết lập",
                              style: TextStyle(
                                  color: Color(0xFF717171),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFB61B2D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0) //
                                      ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_outlined),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
