import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/Register/Question.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum SingingCharacter { btn1, btn2 }

class QA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QA();
  }
}

class _QA extends State<QA> with WidgetsBindingObserver {
  List<Question> question = [
    Question(
        id: "1",
        numberQuestion: "1",
        question: "Anh/chị đã từng tham gia hiến máu chưa?",
        isYNQS: true,
        answers: [
          "Đã từng",
          "Chưa từng",
        ]),
    Question(
        id: "2",
        numberQuestion: "2",
        question:
            "Hiện tại, anh/chị có bị các bệnh: viêm khớp, dạ dày, viêm gan/vàng da, bệnh tim, huyết áp thấp/cao, hen, ho kéo dài, bệnh máu, lao?",
        isYNQS: true,
        answers: [
          "Có",
          "Không",
        ]),
    Question(
        id: "3",
        numberQuestion: "3",
        question:
            "Trong vòng 12 tháng gần đây, anh/chị có mắc các bệnh và đã được điều trị khỏi",
        isYNQS: false,
        answers: [
          "Sốt rét, Giang mai, Lao, Viêm não, Phẫu thuật ngoại khoa?",
          "Được truyền máu và các chế phẩm máu?",
          "Tiêm vacxin bệnh dại",
          "Không",
        ]),
    Question(
        id: "4",
        numberQuestion: "4",
        question:
            "Trong vòng 06 tháng gần đây, anh/chị có bị một trong số các triệu chứng sau không?",
        isYNQS: false,
        answers: [
          "Sút cân nhanh không rõ nguyên nhân",
          "Nổi hạch kéo dài",
          "Chữa răng, châm cứu",
          "Xăm mình, xỏ lỗ tai, lỗ mũi",
          "Sử dụng ma túy?",
          "Quan hệ tình dục với người nhiễm HIV hoặc người có hành vi nguy cơ lây nhiễm HIV",
          "Quan hệ tình dục với người đồng giới?",
          "Không"
        ]),
    Question(
        id: "5",
        numberQuestion: "5",
        question: "Trong 01 tháng gần đây, anh/chị có",
        isYNQS: false,
        answers: [
          "Khỏi bệnh sau khi mắc bệnh viêm đường tiết niệu, viêm da nhiễm trùng, viêm phế quản, viêm phổi, sởi, quai bị, Rubella, Khác",
          "Tiêm vacxin phòng bệnh?",
          "Đi vào vùng có dịch bệnh lưu hành (sốt rét, sốt xuất huyết, Zika,...)",
          "Không"
        ]),
    Question(
        id: "6",
        numberQuestion: "6",
        question: "Trong 07 ngày gần đây anh/chị có",
        isYNQS: false,
        answers: [
          "Bị cảm cúm (ho, nhức đầu, sốt...)?",
          "Dùng thuốc kháng sinh, Aspirin, Corticoid?",
          "Tiêm vacxin phòng Viêm gan siêu vi B, human Papilloma Virus.",
          "Không"
        ]),
    Question(
        id: "7",
        numberQuestion: "7",
        question: "Câu hỏi dành cho phụ nữ",
        isYNQS: false,
        answers: [
          "Hiện có thai, hoặc nuôi con dưới 12 tháng tuổi?",
          "Có kinh nguyệt trong vòng một tuần hay không?",
          "Không"
        ]),
    Question(
        id: "8",
        numberQuestion: "8",
        question:
            "Anh/chị có đồng ý xét nghiệm HIV, nhận thông báo và được tư vấn khi  kết quả xét nghiệm HIV nghi ngờ hoặc dương tính?",
        isYNQS: true,
        answers: [
          "Đồng ý",
          "Không đồng ý",
        ]),
    Question(
        id: "9",
        numberQuestion: "9",
        question: "Bạn đã tiêm vacxin Covid chưa?",
        isYNQS: true,
        answers: [
          "Đã tiêm",
          "Chưa tiêm",
        ]),
  ];

  bool isChecked = false;

  SingingCharacter? _character = SingingCharacter.btn1;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromARGB(255, 222, 120, 97);
      }
      return Color.fromARGB(255, 202, 46, 35);
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Color.fromARGB(255, 16, 16, 16),
              ),
              titleSpacing: 0.0,
              elevation: 0.0,
              backgroundColor: Color.fromARGB(255, 247, 247, 247),
              title: Container(
                height: height * 0.055,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 23),
                      child: Center(
                          child: Text("Câu hỏi lọc hồ sơ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 41, 41, 41),
                                  fontWeight: FontWeight.w600))),
                    ),
                  )
                ]),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: question.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (question[index].isYNQS == false)
                          ? SizedBox(
                              child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.8,
                                      color: Color.fromARGB(255, 52, 50, 50),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.009,
                                        ),
                                        child: Row(children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 15),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 182, 27, 45),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30.0)),
                                              ),
                                              width: width * 0.065,
                                              height: width * 0.065,
                                              child: Center(
                                                  child: Text(
                                                "${question[index].numberQuestion}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 10),
                                            width: width * 0.7,
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "${question[index].question}",
                                              style: TextStyle(
                                                  height: 1.1,
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ]),
                                      ),
                                      Container(
                                        color:
                                            Color.fromARGB(255, 225, 255, 176),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.01,
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: question[index]
                                                    .answers
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index2) {
                                                  return Container(
                                                    child: Row(children: [
                                                      Checkbox(
                                                        checkColor:
                                                            Colors.white,
                                                        fillColor:
                                                            MaterialStateProperty
                                                                .resolveWith(
                                                                    getColor),
                                                        value: isChecked,
                                                        onChanged:
                                                            (bool? value) {
                                                          setState(() {
                                                            isChecked = value!;
                                                          });
                                                        },
                                                      ),
                                                      Container(
                                                        width: width * 0.7,
                                                        child: Text(
                                                            "${question[index].answers[index2]}"),
                                                      )
                                                    ]),
                                                  );
                                                })
                                          ],
                                        ),
                                      ),
                                    ],
                                  )))
                          : SizedBox(
                              child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.8,
                                      color: Color.fromARGB(255, 52, 50, 50),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.009,
                                        ),
                                        child: Row(children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 15),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 182, 27, 45),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30.0)),
                                              ),
                                              width: width * 0.065,
                                              height: width * 0.065,
                                              child: Center(
                                                  child: Text(
                                                "${question[index].numberQuestion}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 10),
                                            width: width * 0.7,
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "${question[index].question}",
                                              style: TextStyle(
                                                  height: 1.1,
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ]),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.01,
                                        ),
                                        height: height * 0.11,
                                        child: Column(
                                          children: <Widget>[
                                            // Kaii
                                            ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: question[index]
                                                    .answers
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index3) {
                                                  return ListTile(
                                                    title: Text(
                                                        "${question[index].answers[index3]}"),
                                                    dense: true,
                                                    visualDensity:
                                                        VisualDensity(
                                                            vertical: -3),
                                                    leading:
                                                        Radio<SingingCharacter>(
                                                      value:
                                                          SingingCharacter.btn1,
                                                      groupValue: _character,
                                                      onChanged:
                                                          (SingingCharacter?
                                                              value) {
                                                        setState(() {
                                                          _character = value;
                                                        });
                                                      },
                                                    ),
                                                  );
                                                })
                                          ],
                                        ),
                                      ),
                                    ],
                                  )));
                    }),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.donation3RouteName);
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      height: height * 0.054,
                      width: width * 0.86,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 182, 27, 45),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Center(
                        child: Text(
                          "Đăng kí",
                          style: TextStyle(
                              color: Color.fromARGB(252, 225, 225, 225)),
                        ),
                      )),
                )
              ]),
            )));
  }
}
