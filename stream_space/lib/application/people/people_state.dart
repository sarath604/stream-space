part of 'people_bloc.dart';

@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState({
    List<Result>? peoplelist,
    required List<KnownFor> peopledetailslist,
    required bool isloading,
    required bool iserror,
  }) = _PeopleState;
  factory PeopleState.Initial() => const PeopleState(
        peopledetailslist: [],
        isloading: false,
        iserror: false,
      );
}
