import 'package:bloody/model/message.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'message_state.dart';

class MessageCubit extends Cubit<MessageState> {
  final ApiRepository apiRepository;

  MessageCubit({required this.apiRepository}) : super(MessageInitial());

  Future<void> loadMessages(String phone) async {
    emit(MessageLoading());

    try {
      List<Message>? messages = await apiRepository.getNotiByUser(phone);
      emit(MessageLoaded(messages: messages!));
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
  }
}
