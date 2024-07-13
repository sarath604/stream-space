import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/People/model/peoplemodel/peoplemodel.dart';
import 'package:stream_space/domain/People/people_service.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

part 'people_event.dart';
part 'people_state.dart';
part 'people_bloc.freezed.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final PeopleService _peopleService;
  PeopleBloc(this._peopleService) : super(PeopleState.Initial()) {
    on<Getpepoles>(
      (event, emit) async {
        emit(
          const PeopleState(
            peoplelist: [],
            peopledetailslist: [],
            isloading: true,
            iserror: false,
          ),
        );
        final result = await _peopleService.getpeopleImage();
        result.fold(
          (MainFailures f) {
             emit(
          const PeopleState(
            peoplelist: [],
            peopledetailslist: [],
            isloading: false,
            iserror: true,
          ),
        );
          },
          (Peoplemodel v) {
             emit(
            PeopleState(
            peoplelist:v.results ,
            peopledetailslist: state.peopledetailslist,
            isloading: false,
            iserror: false,
          ),
        );
          },
        );
      },
    );
  }
}
