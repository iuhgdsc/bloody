import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/blocs/bloc_question/question_cubit.dart';
import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/model/Register/event_regis.dart';
import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

List<dynamic> selectedCheckBoxOptions = [];
List<String> selectedCheckedOptions = [];

class QA extends StatefulWidget {
  const QA({super.key, required this.centerBlood, required this.time});
  final CenterBlood centerBlood;
  final String time;

  @override
  State<StatefulWidget> createState() {
    return _QA();
  }
}

class _QA extends State<QA> with WidgetsBindingObserver {
  bool isChecked = false;
  TextEditingController controller = TextEditingController();
  late User user;

  @override
  Widget build(BuildContext context) {
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
          title: SizedBox(
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
        body: BlocBuilder<QuestionCubit, QuestionState>(
          builder: (context, state) {
            if (state is QuestionInitial) {
              context.read<QuestionCubit>().getQuestions();
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is QuestionLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is QuestionError) {
              return Text(state.message.toString());
            } else if (state is QuestionLoaded) {
              final questions = state.questions;
              return questions.isEmpty
                  ? const Text("wrong!!!!")
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                            itemBuilder: (context, index) {
                              return SizedBox(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.8,
                                      color:
                                          const Color.fromARGB(255, 52, 50, 50),
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
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 182, 27, 45),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30.0)),
                                              ),
                                              width: width * 0.065,
                                              height: width * 0.065,
                                              child: Text(
                                                (index + 1).toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 10),
                                            width: width * 0.7,
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              questions[index].question!,
                                              style: const TextStyle(
                                                  height: 1.1,
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ]),
                                      ),
                                      if (questions[index].isYNQS == true)
                                        MyQuestionWidget(
                                            options: questions[index].answers!,
                                            question:
                                                questions[index].question!)
                                      else
                                        MyQuestionWidgetCheckBox(
                                          options: questions[index].answers!,
                                          id: questions[index].id!,
                                        ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: questions.length,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          BlocBuilder<LoginCubit, LoginState>(
                            builder: (context, state) {
                              if (state is LoginLoaded) {
                                user = state.user;
                              }
                              return Container(
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                height: height * 0.054,
                                width: width * 0.86,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 228, 0, 27),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 228, 0, 27),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  onPressed: () async {
                                    List<dynamic> answers = [];
                                    for (var element
                                        in selectedCheckBoxOptions) {
                                      answers.add(element);
                                    }
                                    for (var element
                                        in selectedCheckedOptions) {
                                      answers.add(element);
                                    }
                                    CenterBlood centerBlood =
                                        widget.centerBlood;
                                    if (centerBlood.isJoined == false) {
                                      centerBlood.isJoined = true;
                                    }

                                    String time =
                                        "${DateTime.now().year.toString()}-${DateTime.now().month.toString()}-${DateTime.now().day.toString()}";
                                    String description =
                                        "Bạn đã đăng ký tham gia hiến máu tình nguyện ngày $time tại địa điểm ${centerBlood.name}";
                                    EventRegis eventRegis = EventRegis(
                                        centerBlood: centerBlood,
                                        timeChoose: widget.time,
                                        answers: answers,
                                        user: user,
                                        description: description);

                                    bool rs = await context
                                        .read<QuestionCubit>()
                                        .submitQuestions(eventRegis);
                                    if (rs == true) {
                                      // ignore: use_build_context_synchronously
                                      GoRouter.of(context).pushNamed(
                                        MyAppRouteConstants.successRoute,
                                      );
                                      selectedCheckBoxOptions.clear();
                                      selectedCheckedOptions.clear();
                                    } else {
                                      // ignore: use_build_context_synchronously
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "Đăng kí không thành công, vui lòng thử lại"),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Center(
                                    child: Text(
                                      "Đăng kí",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(250, 211, 211, 211),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

class MyQuestionWidget extends StatefulWidget {
  final List<dynamic> options;
  final String? question;

  const MyQuestionWidget({super.key, required this.options, this.question});

  @override
  State<MyQuestionWidget> createState() => _MyQuestionWidgetState();
}

class _MyQuestionWidgetState extends State<MyQuestionWidget> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.options[1];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        return ListTile(
          title: Text(option),
          dense: true,
          leading: Radio(
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: option,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value.toString();
              });
              selectedCheckedOptions.add(widget.question!);
            },
          ),
        );
      }).toList(),
    );
  }
}

class MyQuestionWidgetCheckBox extends StatefulWidget {
  final List<dynamic> options;
  final String? id;
  const MyQuestionWidgetCheckBox({Key? key, required this.options, this.id})
      : super(key: key);

  @override
  State<MyQuestionWidgetCheckBox> createState() =>
      _MyQuestionWidgetCheckBoxState();
}

class _MyQuestionWidgetCheckBoxState extends State<MyQuestionWidgetCheckBox> {
  late List<String> values = ["Không"];
  @override
  void initState() {
    super.initState();
    Object defaultOption = {"id": widget.id, "values": values};
    selectedCheckBoxOptions.add(defaultOption);
  }

  @override
  Widget build(BuildContext context) {
    String id = widget.id!;
    return Column(
      children: widget.options.map((option) {
        return Row(
          children: [
            Checkbox(
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: values.contains(option),
              onChanged: (value) {
                setState(() {
                  if (option == "Không") {
                    values.clear();
                    values.add(option);
                  } else if (value == true) {
                    if (values.contains("Không")) {
                      values.remove("Không");
                    }
                    values.add(option);
                  } else {
                    values.remove(option);
                  }
                });

                selectedCheckBoxOptions
                    .removeWhere((element) => element["id"] == id);

                selectedCheckBoxOptions.add({"id": id, "values": values});
              },
            ),
            Flexible(
              child: Text(
                option.toString(),
                maxLines: 4,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Color.fromARGB(255, 38, 38, 38),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return const Color.fromARGB(255, 222, 120, 97);
  }
  return const Color.fromARGB(255, 15, 15, 15);
}
