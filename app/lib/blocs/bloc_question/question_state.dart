part of 'question_cubit.dart';

@immutable
abstract class QuestionState extends Equatable {
  const QuestionState();
  @override
  List<Object> get props => [];
}

class QuestionInitial extends QuestionState {}

class QuestionLoading extends QuestionState {}

class QuestionLoaded extends QuestionState {
  final List<QuestionRegisterCheck> questions;
  const QuestionLoaded({required this.questions});
  @override
  List<Object> get props => [questions];
}

class QuestionError extends QuestionState {
  final String message;
  const QuestionError({required this.message});
  @override
  List<Object> get props => [message];
}
