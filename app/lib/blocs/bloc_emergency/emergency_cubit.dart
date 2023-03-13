import 'package:bloody/model/emergency.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'emergency_state.dart';

class EmergencyCubit extends Cubit<EmergencyState> {
  final ApiRepository apiRepository;

  EmergencyCubit({required this.apiRepository}) : super(EmergencyInitial());

  Future<void> getEmergencys() async {
    emit(EmergencyLoading());
    try {
      final List<Emergency>? emergencies = await apiRepository.getEmergencies();
      emit(EmergencyLoaded(emergencies: emergencies!));
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
  }
}
