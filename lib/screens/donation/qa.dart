// ignore_for_file: prefer_const_constructors

import 'package:bloody/model/Question.dart';
import 'package:bloody/screens/donation/success.dart';
import 'package:flutter/material.dart';

import '../../model/QuestionRegister.dart';

enum SingingCharacter { yn1, yn2 }

class QA extends StatefulWidget {
  const QA({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QA();
  }
}

class _QA extends State<QA> with WidgetsBindingObserver {
  List<QuestionRegister> questionRegister = [
    QuestionRegister(
      id: "1",
      numberQuestion: "1",
      question: "Anh/chị đã từng tham gia hiến máu chưa?",
      answer1: "Có",
      answer2: "Không",
    ),
    QuestionRegister(
      id: "2",
      numberQuestion: "2",
      question:
          "Hiện tại, anh/chị có bị các bệnh: viêm khớp, dạ dày, viêm gan/vàng da, bệnh tim, huyết áp thấp/cao, hen, ho kéo dài, bệnh máu, lao?",
      answer1: "Có",
      answer2: "Không",
    )
  ];
  List<QuestionRegister> questionRegisterAnother = [
    QuestionRegister(
      id: "1",
      numberQuestion: "8",
      question:
          "Anh/chị có đồng ý xét nghiệm HIV, nhận thông báo và được tư vấn khi kết quả xét HIV nghi ngờ hoặc dương tính?",
      answer1: "Đồng ý",
      answer2: "Không đồng ý",
    ),
    QuestionRegister(
      id: "2",
      numberQuestion: "9",
      question: "Bạn đã tiêm vacxin Covid chưa?",
      answer1: "Đã tiêm",
      answer2: "Chưa tiêm",
    )
  ];
  List<Question> questions = [
    Question(
      numberQuestion: "3",
      question:
          "Trong vòng 12 tháng gần đây, anh/chị có mắc các bệnh và đã được điều trị khỏi",
      answers: [
        "Sốt rét, Giang mai, Lao, Viêm não, Phẫu thuật ngoại khoa?",
        "Được truyền máu và các chế phẩm máu?",
        "Tiêm vacxin bệnh dại",
        "Không",
        "Mục khác"
      ],
    ),
    Question(
      numberQuestion: "4",
      question:
          "Trong vòng 06 tháng gần đây, anh/chị có bị một trong số các triệu chứng sau không?",
      answers: [
        "Sút cân nhanh không rõ nguyên nhân",
        "Nổi hạch kéo dài",
        "Chữa răng, châm cứu",
        "Xăm mình, xỏ lỗ tai, lỗ mũi",
        "Sử dụng ma túy?",
        "Quan hệ tình dục với người nhiễm HIV hoặc người có hành vi nguy cơ lây nhiễm HIV",
        "Quan hệ tình dục với người đồng giới?",
        "Không"
      ],
    ),
    Question(
      numberQuestion: "5",
      question: "Trong 01 tháng gần đây, anh/chị có",
      answers: [
        "Khỏi bệnh sau khi mắc bệnh viêm đường tiết niệu, viêm da nhiễm trùng, viêm phế quản, viêm phổi, sởi, quai bị, Rubella, Khác",
        "Tiêm vacxin phòng bệnh",
        "Đi vào vùng có dịch bệnh lưu hành (sốt rét, sốt xuất huyết, Zika,...)",
        "Không",
        "Mục khác"
      ],
    ),
    Question(
      numberQuestion: "6",
      question: "Trong 07 ngày gần đây anh/chị có",
      answers: [
        "Bị cảm cúm (ho, nhức đầu, sốt...)?",
        "Dùng thuốc kháng sinh, Aspirin, Corticoid?",
        "Tiêm vacxin phòng Viêm gan siêu vi B, human Papilloma Virus.",
        "Không",
        "Mục khác"
      ],
    ),
    Question(
      numberQuestion: "7",
      question: "Câu hỏi dành cho phụ nữ",
      answers: [
        "Hiện có thai, hoặc nuôi con dưới 12 tháng tuổi",
        "Có kinh nguyệt trong vòng 1 tuần hay không",
        "Không"
      ],
    ),
  ];

  bool isChecked = false;

  SingingCharacter? _character = SingingCharacter.yn1;
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
          title: Center(
            child: Text(
              "Câu hỏi lọc hồ sơ",
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 41, 41, 41),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: questionRegister.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.8,
                          color: Color.fromARGB(255, 52, 50, 50),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.009,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 182, 27, 45),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    width: width * 0.065,
                                    height: width * 0.065,
                                    child: Center(
                                      child: Text(
                                        questionRegister[index].numberQuestion,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  width: width * 0.7,
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    questionRegister[index].question,
                                    style: TextStyle(
                                        height: 1.1,
                                        color: Color.fromARGB(255, 38, 38, 38),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.01,
                            ),
                            height: height * 0.11,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(questionRegister[index].answer1),
                                  dense: true,
                                  visualDensity: VisualDensity(vertical: -3),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.yn1,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text(questionRegister[index].answer2),
                                  dense: true,
                                  visualDensity: VisualDensity(vertical: -3),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.yn2,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: questions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                            color: Color.fromARGB(255, 52, 50, 50),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.009,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 182, 27, 45),
                                    radius: 15,
                                    child: Text(
                                      questions[index].numberQuestion,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 10),
                                    width: width * 0.7,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      questions[index].question,
                                      style: TextStyle(
                                        height: 1.1,
                                        color: Color.fromARGB(255, 38, 38, 38),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.01,
                              ),
                              child: Column(
                                children: <Widget>[
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: questions[index].answers.length,
                                    itemBuilder:
                                        (BuildContext context, int index2) {
                                      return Row(
                                        children: [
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor: MaterialStateProperty
                                                .resolveWith(getColor),
                                            value: isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                questions[index]
                                                            .answers[index2]
                                                            .toString() ==
                                                        "Mục khác"
                                                    ? Expanded(
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              questions[index]
                                                                      .answers[
                                                                  index2],
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 3,
                                                              softWrap: false,
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        38,
                                                                        38,
                                                                        38),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Divider(
                                                                color: Color
                                                                    .fromARGB(
                                                                  255,
                                                                  52,
                                                                  50,
                                                                  50,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    : Expanded(
                                                        child: Text(
                                                          questions[index]
                                                              .answers[index2],
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 3,
                                                          softWrap: false,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    38,
                                                                    38,
                                                                    38),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: questionRegisterAnother.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                            color: Color.fromARGB(255, 52, 50, 50),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.009,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 182, 27, 45),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30.0),
                                        ),
                                      ),
                                      width: width * 0.065,
                                      height: width * 0.065,
                                      child: Center(
                                        child: Text(
                                          questionRegisterAnother[index]
                                              .numberQuestion,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 10),
                                    width: width * 0.7,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      questionRegisterAnother[index].question,
                                      style: TextStyle(
                                          height: 1.1,
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.01,
                              ),
                              height: height * 0.11,
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                        questionRegisterAnother[index].answer1),
                                    dense: true,
                                    visualDensity: VisualDensity(vertical: -3),
                                    leading: Radio<SingingCharacter>(
                                      value: SingingCharacter.yn1,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                        questionRegisterAnother[index].answer2),
                                    dense: true,
                                    visualDensity: VisualDensity(vertical: -3),
                                    leading: Radio<SingingCharacter>(
                                      value: SingingCharacter.yn2,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessRegister(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFED1A1A),
                    minimumSize: const Size(double.infinity, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Đăng ký",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
