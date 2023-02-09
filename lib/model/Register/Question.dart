import 'package:flutter/material.dart';

class Question {
  final String id;
  final String numberQuestion;
  final String question;
  bool isYNQS = false;

  List<String> answers = [];

  Question({
    required this.id,
    required this.numberQuestion,
    required this.question,
    required this.answers,
    required this.isYNQS,
  });
}
