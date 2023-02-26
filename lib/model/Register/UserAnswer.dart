import 'package:flutter/material.dart';

class UserAnswer {
  late String as_question1;
  final String as_question2;

  List<Object> as_question3 = [];
  List<Object> as_question4 = [];
  List<Object> as_question5 = [];
  List<Object> as_question6 = [];
  List<Object> as_question7 = [];

  final String as_question8;
  final String as_question9;

  UserAnswer({
    required this.as_question1,
    required this.as_question2,
    required this.as_question3,
    required this.as_question4,
    required this.as_question5,
    required this.as_question6,
    required this.as_question7,
    required this.as_question8,
    required this.as_question9,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        as_question1,
        as_question2,
        as_question3,
        as_question4,
        as_question5,
        as_question6,
        as_question7,
        as_question8,
        as_question9,
      ];
}
