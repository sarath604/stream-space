part of 'people_bloc.dart';
@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState({
    List<Result>? peoplelist,
    required List<KnownFor> peopledetailslist,
    required bool isloading,
    required bool iserror,
    int? currentPage,
    int? totalPages,
  }) = _PeopleState;
  
  factory PeopleState.Initial() => const PeopleState(
    peopledetailslist: [],
    isloading: false,
    iserror: false,
    currentPage: 1,
    totalPages: 0,
  );
}
