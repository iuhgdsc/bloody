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

  // factory Question.fromJson(Map<String, dynamic> json) {
  //   return Question(
  //       id: json["id"],
  //       numberQuestion: json["numberQuestion"],
  //       question: json["question"],
  //       answers: json["answers"],
  //       isYNQS: json["isYNQS"]);
  // }
}
