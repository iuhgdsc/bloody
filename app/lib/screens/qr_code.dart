import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class QRCode extends StatelessWidget {
  const QRCode({Key? key}) : super(key: key);
  static String routeName = "/success";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state is LoginLoaded) {
          return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  leading: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "Mã QR của bạn",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  centerTitle: true,
                ),
                body: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/register_success.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 38,
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/qrcode.png",
                            height: 225,
                            width: 225,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Thông tin cá nhân",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          height: 180,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Icon(
                                        Icons.account_circle_sharp,
                                        color: Color(0xFF79747E),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("Họ tên",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF79747E))),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          state.user.userName!,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 1,
                                height: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Icon(
                                        Icons.calendar_month_rounded,
                                        color: Color(0xFF79747E),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("Ngày sinh",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF79747E))),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          // user.birthday.compareTo(DateTime.now()) > 0
                                          //     ? "Chưa cập nhật"
                                          //     : "${user.birthday.day}/"
                                          //         '0'
                                          //         "${user.birthday.month}/${user.birthday.year}",
                                          state.user.address!,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 1,
                                height: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Icon(
                                        Icons.perm_identity,
                                        color: Color(0xFF79747E),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("Số CMND/CCCD",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF79747E))),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          state.user.cccd!,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          );
        } else {
          return const Center(
            child: Text("Loading..."),
          );
        }
      },
    );
  }
}

Padding header({required String name, required int count}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(
      20,
      20,
      20,
      10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xFFFE5C35),
              radius: 25,
              child: Image.asset(
                "assets/avatar.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Xin chào",
                    style: TextStyle(fontSize: 16, color: Color(0xFF333335)),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Stack(
            children: [
              const Image(
                image: AssetImage("assets/icons/bell.png"),
                height: 30,
                width: 39,
                color: Colors.black,
              ),
              Positioned(
                top: 0,
                right: 8,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "$count",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
