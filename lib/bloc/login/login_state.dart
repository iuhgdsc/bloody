part of 'login_cubit.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class NumberLoaded extends LoginState {
  final String phonenumber;
  const NumberLoaded({required this.phonenumber});
  @override
  List<Object> get props => [phonenumber];
}

class NumberError extends LoginState {
  final String message;
  const NumberError({required this.message});
  @override
  List<Object> get props => [message];
}
