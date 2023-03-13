part of 'event_of_user_cubit.dart';

@immutable
abstract class EventOfUserState extends Equatable {
  const EventOfUserState();
  @override
  List<Object> get props => [];
}

class EventOfUserInitial extends EventOfUserState {}

class EventOfUserLoading extends EventOfUserState {}

class EventOfUserLoaded extends EventOfUserState {
  final List<EventRegis> eventUsers;
  const EventOfUserLoaded({required this.eventUsers});
  @override
  List<Object> get props => [eventUsers];
}

class NumberError extends EventOfUserState {
  final String message;
  const NumberError({required this.message});
  @override
  List<Object> get props => [message];
}
