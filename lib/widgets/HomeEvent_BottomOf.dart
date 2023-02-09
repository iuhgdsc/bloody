import 'package:bloody/widgets/HomeEventBottom/HE_Screen1.dart';
import 'package:flutter/material.dart';

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
    HE_Screen1(),
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
        SizedBox(
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
        SizedBox(
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
        SizedBox(
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
        SizedBox(
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
            SizedBox(
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
        SizedBox(
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
        SizedBox(
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
      margin: EdgeInsets.only(top: 15),
      height: height * 0.6,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 182, 27, 45),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 182, 27, 45),
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Container(
                margin: const EdgeInsets.only(top: 6),
                child: TabBar(
                  onTap: _onItemTapped,
                  indicatorColor: Color.fromARGB(255, 181, 25, 43),
                  unselectedLabelColor: Color.fromARGB(255, 166, 166, 166),
                  labelColor: Color.fromARGB(255, 255, 255, 255),
                  tabs: const [
                    Tab(
                      text: 'Trước khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Sau khi\nhiến máu',
                    ),
                    Tab(
                      text: 'Thông tin]\nnhóm máu',
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              child: Container(
                child: body.elementAt(_currentIndex),
              ),
            )),
      ),
    );
  }
}
