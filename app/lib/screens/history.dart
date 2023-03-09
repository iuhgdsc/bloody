import 'package:bloody/model/message_notify.dart';
import 'package:bloody/widgets/btn_contact.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);
  static String routeName = "/history";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                                                const EdgeInsets.only(left: 25),
                                            child: const Text(
                                              "Chi tiết sự kiện",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                              255,
                                              54,
                                              204,
                                              123,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
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
                                        left: 20, right: 20, bottom: 15),
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
                                              listMessage[index].title,
                                              maxLines: 3,
                                              softWrap: false,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.end,
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
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
                                        left: 20, right: 20, bottom: 15),
                                    child: Row(
                                      children: const [
                                        Expanded(
                                            child: Text(
                                          "Địa chỉ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 10, 10, 10)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 15),
                                    child: Row(
                                      children: const [
                                        Expanded(
                                            child: Text(
                                          "Thời gian",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 10, 10, 10)),
                                        )),
                                        Text(
                                          "7:00 - 7:30, 16/10/2022",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  255, 48, 48, 48)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const BtnContact(text: "Liên hệ hỗ trợ"),
                                  const BtnContact(text: "Hủy đăng kí"),
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
