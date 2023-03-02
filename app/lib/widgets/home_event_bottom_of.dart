import 'package:flutter/material.dart';

List<String> notes = [
  "Đêm trước hiến máu không nên thức quá khuya (ngủ ít nhất 6 tiếng).",
  "Nên ăn nhẹ, KHÔNG ăn các đồ ăn có nhiều đạm, nhiều mỡ.",
  "KHÔNG uống rượu, bia.",
  "Chuẩn bị tâm lý thực sự thoải mái.",
  "Mang theo giấy tờ tùy thân.",
  "Uống nhiều nước."
];

class HomeEventBottomOf extends StatefulWidget {
  const HomeEventBottomOf({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeEventBottomOf();
  }
}

class _HomeEventBottomOf extends State<HomeEventBottomOf>
    with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<Widget> body = [
    Scaffold(
      body: Container(
          color: const Color.fromARGB(255, 182, 27, 45),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          child: Text(" ●  " "${notes[index]}",
                              style: const TextStyle(
                                  height: 1.3,
                                  color: Color.fromARGB(255, 1, 1, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)));
                    }),
              ),
            ],
          )),
    ),
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Duỗi thẳng, hơi nâng cao cánh tay trong 15 phút.",
                maxLines: 4,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Hạn chế gập tay trong quá trình nghỉ sau hiến máu.",
                maxLines: 4,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Nghỉ tại điểm hiến máu tối thiểu 15 phút.",
                maxLines: 4,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Chỉ ra về khi cảm thấy thực sự thoải mái.",
                maxLines: 4,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "\u2022",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "Nếu xuất hiện chảy máu từ vết băng cầm máu:",
                    maxLines: 4,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "\u2022",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Nâng cánh tay lên và ấn nhẹ vào vết bông.",
                          maxLines: 4,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "\u2022",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Ngồi xuống ghế và thông báo cho nhân viên y tế để được hỗ trợ.",
                          maxLines: 4,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Các nhóm máu quan trọng nhât trong truyền máu là hệ thống máu ABO và hệ thống máu RhD.",
                maxLines: 4,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Nhóm máu được xác định bỏi một loại protein (kháng nguyên) trên bề mặt hồng cầu. Vì vậy, hệ thống ABO có kháng nguyên A và B và hệ thống RhD có kháng nguyên D.",
                maxLines: 8,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Tổng cộng, có 30 hệ thống nhóm máu chính. Điều này có nghĩa là một người có thể có A RhD dương tính, đồng thời Kell (hệ thống Kell) dương tính, M và N (hệ thống MNS) dương tính và Lea và Leb (hệ thống Lewis) dương tính.",
                maxLines: 8,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: height * 0.6,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 182, 27, 45),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 182, 27, 45),
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Container(
                margin: const EdgeInsets.only(top: 6),
                child: TabBar(
                  onTap: _onItemTapped,
                  indicatorColor: const Color.fromARGB(255, 181, 25, 43),
                  unselectedLabelColor:
                      const Color.fromARGB(255, 166, 166, 166),
                  labelColor: const Color.fromARGB(255, 255, 255, 255),
                  labelStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Trước khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Sau khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Thông tin\nnhóm máu',
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              child: body.elementAt(_currentIndex),
            )),
      ),
    );
  }
}
