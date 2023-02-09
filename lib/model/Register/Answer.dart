import 'package:flutter/material.dart';

class Answer {
  final String id;
  final String numberQuestion;
  final String question;
  final String answer1;
  final String answer2;

  Answer(
      {required this.id,
      required this.numberQuestion,
      required this.question,
      required this.answer1,
      required this.answer2});
}
