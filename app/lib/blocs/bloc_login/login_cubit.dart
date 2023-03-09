import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloody/model/user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

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

  void setUser(User user) {
    try {
      emit(LoginLoaded(user: user));
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
