import 'package:bloody/model/Register/event_regis.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event_of_user_state.dart';

class EventOfUserCubit extends Cubit<EventOfUserState> {
  final ApiRepository apiRepository;

  EventOfUserCubit({required this.apiRepository}) : super(EventOfUserInitial());
  Future<void> getEventRegisOfUSer(String phone) async {
    emit(EventOfUserLoading());

    try {
      final List<EventRegis>? eventRegis =
          await apiRepository.getEventRegisByUser(phone);
      emit(EventOfUserLoaded(eventUsers: eventRegis!));
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
        print("Error :$e");
      }
    }
  }
}
