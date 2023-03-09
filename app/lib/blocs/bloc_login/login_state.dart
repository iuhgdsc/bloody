part of 'login_cubit.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final User user;
  const LoginLoaded({required this.user});
  @override
  List<Object> get props => [user];
}

class NumberError extends LoginState {
  final String message;
  const NumberError({required this.message});
  @override
  List<Object> get props => [message];
}
