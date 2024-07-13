part of 'newandhot_bloc.dart';

@freezed
class NewandhotEvent with _$NewandhotEvent {
  const factory NewandhotEvent.comingsoon() = Comingsoon;
  const factory NewandhotEvent.everyonewatching() = Everyonewatching;
}
