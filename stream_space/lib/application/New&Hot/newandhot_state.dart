part of 'newandhot_bloc.dart';

@freezed
class NewandhotState with _$NewandhotState {
  const factory NewandhotState({
    required List<Result> comingsoonlist,
    required List<Result> everyonewatchinglist,
    required bool isloading,
    required bool iserror,
  }) = _Initial;
  factory NewandhotState.Initial() => const NewandhotState(
        comingsoonlist: [],
        everyonewatchinglist: [],
        isloading: false,
        iserror: false,
      );
}
