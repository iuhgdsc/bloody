part of 'event_cubit.dart';

@immutable
abstract class EventState extends Equatable {
  const EventState();
  @override
  List<Object> get props => [];
}

class EventInitial extends EventState {}

class EventLoading extends EventState {}

class EventLoaded extends EventState {
  final List<CenterBlood> events;
  const EventLoaded({required this.events});
  @override
  List<Object> get props => [events];
}

class EventError extends EventState {
  final String message;
  const EventError({required this.message});
  @override
  List<Object> get props => [message];
}
