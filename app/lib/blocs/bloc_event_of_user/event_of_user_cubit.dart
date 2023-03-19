import 'package:bloody/blocs/bloc_event/event_cubit.dart';
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
        print("Error :$e");
      }
    }
  }

  //delete event
  Future<bool> deleteEventRegis(String phone, String id) async {
    try {
      await apiRepository.deleteEventRegis(phone, id);
      List<EventRegis> events = (state as EventOfUserLoaded).eventUsers;
      events.removeWhere((event) => event.id == id);
      emit(EventOfUserLoaded(eventUsers: events));
      return true;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return false;
  }
}
