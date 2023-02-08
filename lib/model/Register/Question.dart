import 'package:flutter/material.dart';

class Question {
  final String id;
  final String numberQuestion;
  final String question;

  List<String> answers = [];

  Question(
      {required this.id,
      required this.numberQuestion,
      required this.question,
      required this.answers});
}
