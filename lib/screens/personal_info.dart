import 'package:bloody/screens/home.dart';
import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    ),
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
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
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
              child: const Text(
                "Nguyễn Việt Hoàng",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 39,
                    ),
                    const Text(
                      "Họ và tên",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                      child: const Text(
                        "Nguyễn Việt Hoàng",
                        style: TextStyle(
                            color: Color(0xFF717171),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFB61B2D),
                        borderRadius: BorderRadius.all(Radius.circular(10.0) //
                            ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_outlined),
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
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 39,
                      ),
                      const Text(
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
                        child: const Text(
                          "0971812515",
                          style: TextStyle(
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
                          icon: Icon(Icons.edit_outlined),
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
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 39,
                      ),
                      const Text(
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
                        child: const Text(
                          "Chưa xác thực",
                          style: TextStyle(
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
                          icon: Icon(Icons.edit_outlined),
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
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 39,
                      ),
                      const Text(
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
                        child: const Text(
                          "12 Nguyễn Văn Bảo, phường\n04, quận Gò Vấp, TP. HCM",
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
                          icon: Icon(Icons.edit_outlined),
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
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 39,
                      ),
                      const Text(
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
                      SizedBox(
                        width: 230,
                        child: const Text(
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
                          icon: Icon(Icons.edit_outlined),
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
  }
}
