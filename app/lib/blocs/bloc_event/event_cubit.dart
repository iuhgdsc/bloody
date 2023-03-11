import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event_state.dart';

class EventCubit extends Cubit<EventState> {
  final ApiRepository apiRepository;

  EventCubit({required this.apiRepository}) : super(EventInitial());

  Future<void> getEvents() async {
    emit(EventLoading());
    try {
      final List<CenterBlood>? events = await apiRepository.getEventRegis();
      if (events != null) {
        emit(EventLoaded(events: events));
      } else {
        emit(const EventError(message: "Error"));
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
  }
}
