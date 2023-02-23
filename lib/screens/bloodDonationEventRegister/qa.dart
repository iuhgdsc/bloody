import 'package:bloody/bloc/question_cubit.dart';
import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/Register/Question.dart';
import 'package:bloody/model/Register/UserAnswer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

enum QS1 {
  as1,
  as2,
}

enum QS2 {
  as1,
  as2,
}

enum QS8 {
  as1,
  as2,
}

enum QS9 {
  as1,
  as2,
}

class QA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QA();
  }
}

class _QA extends State<QA> with WidgetsBindingObserver {
  bool qs3as1 = false;
  bool qs3as2 = false;
  bool qs3as3 = false;
  bool qs3as4 = false;

  bool qs4as1 = false;
  bool qs4as2 = false;
  bool qs4as3 = false;
  bool qs4as4 = false;
  bool qs4as5 = false;
  bool qs4as6 = false;
  bool qs4as7 = false;
  bool qs4as8 = false;

  bool qs5as1 = false;
  bool qs5as2 = false;
  bool qs5as3 = false;
  bool qs5as4 = false;

  bool qs6as1 = false;
  bool qs6as2 = false;
  bool qs6as3 = false;
  bool qs6as4 = false;

  bool qs7as1 = false;
  bool qs7as2 = false;

  QS1? _char1;
  QS2? _char2;
  QS8? _char8;
  QS9? _char9;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    UserAnswer userAnswer = new UserAnswer(
      as_question1: "",
      as_question2: "",
      as_question3: [],
      as_question4: [],
      as_question5: [],
      as_question6: [],
      as_question7: [],
      as_question8: "",
      as_question9: "",
    );

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color.fromARGB(255, 98, 175, 77);
      }
      return const Color.fromARGB(255, 202, 46, 35);
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Color.fromARGB(255, 16, 16, 16),
              ),
              titleSpacing: 0.0,
              elevation: 0.0,
              backgroundColor: const Color.fromARGB(255, 247, 247, 247),
              title: Container(
                height: height * 0.055,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 23),
                      child: const Center(
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
            // blockai
            // bloc Builder
            body: BlocBuilder<QuestionCubit, List<Question>>(
              builder: (context, state) {
                if (state.isEmpty) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return SingleChildScrollView(
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            // blockai
                                            // call sate
                                            "${state[0].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[0].question}",
                                          style: const TextStyle(
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
                                        ListTile(
                                            title:
                                                Text("${state[0].answers[0]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS1>(
                                              value: QS1.as1,
                                              groupValue: _char1,
                                              onChanged: (QS1? value) {
                                                print(value);
                                                setState(() {
                                                  _char1 = value;
                                                });
                                              },
                                            )),
                                        ListTile(
                                            title:
                                                Text("${state[0].answers[1]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS1>(
                                              value: QS1.as2,
                                              groupValue: _char1,
                                              onChanged: (QS1? value) {
                                                print(value);
                                                setState(() {
                                                  _char1 = value;
                                                });
                                              },
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[1].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[1].question}",
                                          style: const TextStyle(
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
                                        ListTile(
                                            title:
                                                Text("${state[1].answers[0]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS2>(
                                              value: QS2.as1,
                                              groupValue: _char2,
                                              onChanged: (QS2? value) {
                                                print(_char2);
                                                setState(() {
                                                  _char2 = value;
                                                });
                                              },
                                            )),
                                        ListTile(
                                            title:
                                                Text("${state[1].answers[1]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS2>(
                                              value: QS2.as2,
                                              groupValue: _char2,
                                              onChanged: (QS2? value) {
                                                print(_char2);
                                                setState(() {
                                                  _char2 = value;
                                                });
                                              },
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[2].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[2].question}",
                                          style: const TextStyle(
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
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as1,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs3as1 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[2].answers[0]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as2,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs3as2 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[2].answers[1]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as3,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs3as3 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[2].answers[2]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as4,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs3as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[2].answers[3]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as4,
                                              onChanged: (bool? value) {
                                                print(controller.text);
                                                setState(() {
                                                  qs3as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.25,
                                              child: const Text("Mục khác:"),
                                            ),
                                            Container(
                                                width: width * 0.45,
                                                height: height * 0.03,
                                                child: TextField(
                                                  controller: controller,
                                                ))
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[3].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[3].question}",
                                          style: const TextStyle(
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
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs4as1,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs4as1 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[3].answers[0]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs4as2,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs4as2 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[3].answers[1]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs4as3,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs4as3 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[3].answers[2]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs4as4,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs4as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[3].answers[3]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs4as5,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs4as5 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[3].answers[4]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as4,
                                              onChanged: (bool? value) {
                                                print(controller.text);
                                                setState(() {
                                                  qs3as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.25,
                                              child: const Text("Mục khác:"),
                                            ),
                                            Container(
                                                width: width * 0.45,
                                                height: height * 0.03,
                                                child: TextField(
                                                  controller: controller,
                                                ))
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[4].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[4].question}",
                                          style: const TextStyle(
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
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              checkColor: Colors.white,
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs5as1,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs5as1 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[4].answers[0]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs5as2,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs5as2 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[4].answers[1]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs5as3,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs5as3 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[4].answers[2]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs5as4,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs5as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[4].answers[3]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as4,
                                              onChanged: (bool? value) {
                                                print(controller.text);
                                                setState(() {
                                                  qs3as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.25,
                                              child: const Text("Mục khác:"),
                                            ),
                                            Container(
                                                width: width * 0.45,
                                                height: height * 0.03,
                                                child: TextField(
                                                  controller: controller,
                                                ))
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[5].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[5].question}",
                                          style: const TextStyle(
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
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              checkColor: Colors.white,
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs6as1,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs6as1 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[5].answers[0]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              checkColor: Colors.white,
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs6as2,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs6as2 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[5].answers[1]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs6as3,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs6as3 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[5].answers[2]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs6as4,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs6as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[5].answers[3]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs3as4,
                                              onChanged: (bool? value) {
                                                print(controller.text);
                                                setState(() {
                                                  qs3as4 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.25,
                                              child: const Text("Mục khác:"),
                                            ),
                                            Container(
                                                width: width * 0.45,
                                                height: height * 0.03,
                                                child: TextField(
                                                  controller: controller,
                                                ))
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[6].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[6].question}",
                                          style: const TextStyle(
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
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs7as1,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs7as1 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[6].answers[0]}"),
                                            )
                                          ]),
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Checkbox(
                                              checkColor: Colors.white,
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: qs7as2,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  qs7as2 = value!;
                                                });
                                              },
                                            ),
                                            Container(
                                              width: width * 0.7,
                                              child: Text(
                                                  "${state[6].answers[1]}"),
                                            )
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[7].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[7].question}",
                                          style: const TextStyle(
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
                                        ListTile(
                                            title:
                                                Text("${state[7].answers[0]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS8>(
                                              value: QS8.as1,
                                              groupValue: _char8,
                                              onChanged: (QS8? value) {
                                                print(_char8);
                                                setState(() {
                                                  _char8 = value;
                                                });
                                              },
                                            )),
                                        ListTile(
                                            title:
                                                Text("${state[7].answers[1]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS8>(
                                              value: QS8.as2,
                                              groupValue: _char8,
                                              onChanged: (QS8? value) {
                                                print(_char8);
                                                setState(() {
                                                  _char8 = value;
                                                });
                                              },
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      SizedBox(
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: const Color.fromARGB(255, 52, 50, 50),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.009,
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 182, 27, 45),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0)),
                                          ),
                                          width: width * 0.065,
                                          height: width * 0.065,
                                          child: Center(
                                              child: Text(
                                            "${state[8].numberQuestion}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        width: width * 0.7,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${state[8].question}",
                                          style: const TextStyle(
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
                                        ListTile(
                                            title:
                                                Text("${state[8].answers[0]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS9>(
                                              value: QS9.as1,
                                              groupValue: _char9,
                                              onChanged: (QS9? value) {
                                                print(_char9);
                                                setState(() {
                                                  _char9 = value;
                                                });
                                              },
                                            )),
                                        ListTile(
                                            title:
                                                Text("${state[8].answers[1]}"),
                                            dense: true,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            leading: Radio<QS9>(
                                              value: QS9.as2,
                                              groupValue: _char9,
                                              onChanged: (QS9? value) {
                                                setState(() {
                                                  _char9 = value;
                                                });
                                              },
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).pushNamed(
                              MyAppRouteConstants.donation3RouteName);
                          print(state[1].question);
                          setState(() {
                            //blockai
                            // send the answer of User to sever
                            userAnswer = new UserAnswer(
                              as_question1: (QS1.as1 == true)
                                  ? "QS1 answer is 1"
                                  : "QS1 answer is 2",
                              as_question2: (QS2.as1 == true)
                                  ? "QS2 answer is 1"
                                  : "QS2 answer is 2",
                              as_question3: [qs3as1, qs3as2, qs3as3, qs3as4],
                              as_question4: ["123", "567 "],
                              as_question5: [],
                              as_question6: [],
                              as_question7: [],
                              as_question8: "",
                              as_question9: "",
                            );
                            // print("$userAnswer");
                          });
                        },
                        child: Container(
                            margin: const EdgeInsets.only(top: 5, bottom: 5),
                            height: height * 0.054,
                            width: width * 0.86,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 182, 27, 45),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: const Center(
                              child: Text(
                                "Đăng kí",
                                style: TextStyle(
                                    color: Color.fromARGB(252, 225, 225, 225)),
                              ),
                            )),
                      )
                    ]),
                  );
                }
              },
            )));
  }
}
