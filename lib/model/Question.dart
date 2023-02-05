import 'package:flutter/material.dart';

class Question {
  final String numberQuestion;
  late final String question;

  List<String> answers = [];

  Question(
      {required this.numberQuestion,
      required this.question,
      required this.answers});
}
