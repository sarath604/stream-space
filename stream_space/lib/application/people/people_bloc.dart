import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/People/model/peoplemodel/peoplemodel.dart';
import 'package:stream_space/domain/People/people_service.dart';


part 'people_event.dart';
part 'people_state.dart';
part 'people_bloc.freezed.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final PeopleService _peopleService;

  PeopleBloc(this._peopleService) : super(PeopleState.Initial()) {
    on<Getpepoles>(_onGetPeoples);
    on<GetpeoplesNextPage>(_onGetPeoplesNextPage);
  }

  Future<void> _onGetPeoples(Getpepoles event, Emitter<PeopleState> emit) async {
    emit(state.copyWith(isloading: true, iserror: false));

    final result = await _peopleService.getpeopleImage(page: 1);
    result.fold(
      (failure) {
        emit(state.copyWith(isloading: false, iserror: true));
      },
      (peopleModel) {
        emit(state.copyWith(
          isloading: false,
          peoplelist: peopleModel.results,
          currentPage: peopleModel.page,
          totalPages: peopleModel.totalPages,
        ));
      },
    );
  }

  Future<void> _onGetPeoplesNextPage(GetpeoplesNextPage event, Emitter<PeopleState> emit) async {
    if (state.currentPage! >= state.totalPages!) return;

    emit(state.copyWith(isloading: true, iserror: false));

    final nextPage = state.currentPage! + 1;
    final result = await _peopleService.getpeopleImage(page: nextPage);
    result.fold(
      (failure) {
        emit(state.copyWith(isloading: false, iserror: true));
      },
      (peopleModel) {
        emit(state.copyWith(
          isloading: false,
          peoplelist: peopleModel.results,
          currentPage: peopleModel.page,
          totalPages: peopleModel.totalPages,
        ));
      },
    );
  }
}