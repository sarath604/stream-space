part of 'newandhot_bloc.dart';

@freezed
class NewandhotState with _$NewandhotState {
  const factory NewandhotState({
    required List<Result> comingsoonlist,
    required List<Result> everyonewatchinglist,
    required bool isloading,
    required bool iserror,
     int? currentPage,
    int? totalPages,
  }) = _Initial;
  factory NewandhotState.Initial() => const NewandhotState(
        comingsoonlist: [],
        everyonewatchinglist: [],
        isloading: false,
        iserror: false,
        currentPage: 1,
        totalPages: 0,
      );
}
