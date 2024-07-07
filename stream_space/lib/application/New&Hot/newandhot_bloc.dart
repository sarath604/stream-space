import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/New&Hot/model/new_and_hot_respo/new_and_hot_respo.dart';
import 'package:stream_space/domain/New&Hot/new_and_hot_service.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

part 'newandhot_event.dart';
part 'newandhot_state.dart';
part 'newandhot_bloc.freezed.dart';

@injectable
class NewandhotBloc extends Bloc<NewandhotEvent, NewandhotState> {
  final NewAndHotService _newAndHotService;
  NewandhotBloc(this._newAndHotService) : super(NewandhotState.Initial()) {
    on<Comingsoon>((event, emit) async {
      emit(
        const NewandhotState(
          comingsoonlist: [],
          everyonewatchinglist: [],
          isloading: true,
          iserror: false,
        ),
      );

      final result = await _newAndHotService.newAndHotcomingsoon();
      result.fold((MainFailures f) {
        emit(
          const NewandhotState(
            comingsoonlist: [],
            everyonewatchinglist: [],
            isloading: false,
            iserror: true,
          ),
        );
      }, (NewAndHotRespo resp) {
        emit(
          NewandhotState(
            comingsoonlist: resp.results,
            everyonewatchinglist: state.everyonewatchinglist,
            isloading: false,
            iserror: false,
          ),
        );
      });
    });

    on<Everyonewatching>((event, emit) {
      // TODO: implement event handler
    });
  }
}
