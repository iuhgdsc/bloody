import 'package:bloody/model/Register/question_check.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  final ApiRepository apiRepository;

  QuestionCubit({required this.apiRepository}) : super(QuestionInitial());

  Future<void> getQuestions() async {
    emit(QuestionLoading());
    try {
      final List<QuestionRegisterCheck>? questions =
          await apiRepository.getQuestions();
      if (questions != null) {
        emit(QuestionLoaded(questions: questions));
      } else {
        emit(const QuestionError(message: "Error"));
      }
    } catch (err) {
      print("Error :$err");
    }
  }

  Future<List<String>> submitQuestions(List<String> questionData) {
    final List<String> questionList = [];
    for (int i = 0; i < questionData.length; i++) {
      questionList.add(questionData[i]);
    }
    return Future.value(questionList);
  }
}
