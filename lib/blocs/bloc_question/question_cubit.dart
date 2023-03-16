import 'package:bloody/blocs/bloc_question/question_state.dart';
import 'package:bloody/model/Register/question_check.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionCubit extends Cubit<List<QuestionRegisterCheck>> {
  final _dataService = Service();
  QuestionCubit() : super([]);

  void get Quess async => emit(await _dataService.getQuestion());
}
