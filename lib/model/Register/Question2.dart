import 'package:flutter/material.dart';

class Question2 {
  final String id;
  final String numberQuestion;
  final String question;

  List<String> answers = [];

  Question2(
      {required this.id,
      required this.numberQuestion,
      required this.question,
      required this.answers});
}
