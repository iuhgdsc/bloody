part of 'emergency_cubit.dart';

@immutable
abstract class EmergencyState extends Equatable {
  const EmergencyState();
  @override
  List<Object> get props => [];
}

class EmergencyInitial extends EmergencyState {}

class EmergencyLoading extends EmergencyState {}

class EmergencyLoaded extends EmergencyState {
  final List<Emergency> emergencies;
  const EmergencyLoaded({required this.emergencies});
  @override
  List<Object> get props => [emergencies];
}

class EmergencyError extends EmergencyState {
  final String message;
  const EmergencyError({required this.message});
  @override
  List<Object> get props => [message];
}
