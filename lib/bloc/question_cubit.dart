import 'package:bloody/bloc/service.dart';
import 'package:bloody/model/Register/Question.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionCubit extends Cubit<List<Question>> {
  final _dataService = Service();
  QuestionCubit() : super([]);

  void get Quess async => emit(await _dataService.getQuestion());
}
