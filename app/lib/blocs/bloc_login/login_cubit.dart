import 'package:bloody/model/user.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiRepository apiRepository;

  LoginCubit({required this.apiRepository}) : super(LoginInitial());
  Future<void> loadUser(String phone) async {
    emit(LoginLoading());
    try {
      final User? user = await apiRepository.getUser(phone);
      if (user != null) {
        emit(LoginLoaded(user: user));
      }
      return;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  void setPhone(String phone) {
    try {
      User user = User(phone: phone);
      emit(LoginLoaded(user: user));
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  Future<void> setUser(User user) async {
    try {
      emit(LoginLoaded(user: user));
      await apiRepository.addUser(user);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
