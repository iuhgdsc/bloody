import 'package:bloody/model/MessageNotify.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);
  static String routeName = "/history";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: ListView.builder(
          itemCount: listMessage.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  insetPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  actions: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: SizedBox(
                        width: 380,
                        height: 380,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Center(
                                      child: Text(
                                        "Chi tiết sự kiện",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                children: [
                                  const Expanded(
                                      child: Text(
                                    "Trạng thái",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    onPressed: null,
                                    child: const Text(
                                      "Đã đăng ký",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                children: [
                                  const Expanded(
                                      child: Text(
                                    "Đơn vị",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )),
                                  Flexible(
                                    child: Text(
                                      listMessage[index].title,
                                      maxLines: 4,
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.end,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                children: const [
                                  Expanded(
                                      child: Text(
                                    "Địa chỉ",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )),
                                  Flexible(
                                    child: Text(
                                      "201B Nguyễn Chí Thanh, Phường 12, Quận 5, TP.HCM",
                                      maxLines: 4,
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                children: const [
                                  Expanded(
                                      child: Text(
                                    "Thời gian",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )),
                                  Text(
                                    "7:00 - 7:30, 16/10/2022",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xFFB61B2D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                onPressed: null,
                                child: const Text(
                                  "Liên hệ hỗ trợ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xFFB61B2D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                onPressed: null,
                                child: const Text(
                                  "Hủy đăng ký",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
                    leading: const Image(
                        image: AssetImage("assets/images/huyethoc.png")),
                    title: Text(listMessage[index].title),
                    subtitle: Text(listMessage[index].description),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
