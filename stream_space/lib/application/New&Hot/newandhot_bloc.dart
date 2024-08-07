import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
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

      final result = await _newAndHotService.newAndHotcomingsoon(page: 1);
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
            currentPage: resp.page,
            totalPages: resp.totalPages,
          ),
        );
      });
    });
    on<GetNextPage>((event, emit) async {
      if (state.currentPage! >= state.totalPages!) return;
      emit(state.copyWith(isloading: true, iserror: false));
      final nextPage = state.currentPage! + 1;

      final result = await _newAndHotService.newAndHotcomingsoon(page: nextPage);
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
            currentPage: resp.page,
            totalPages: resp.totalPages,
          ),
        );
      });
    });

// Everyonewatching


    on<Everyonewatching>((event, emit) async {
      emit(
        const NewandhotState(
          comingsoonlist: [],
          everyonewatchinglist: [],
          isloading: true,
          iserror: false,
          
        ),
      );

      final result = await _newAndHotService.newAndHotEveryoneWatching(page:1);
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
            comingsoonlist: state.comingsoonlist,
            everyonewatchinglist: resp.results,
            isloading: false,
            iserror: false,
            currentPage: resp.page,
            totalPages: resp.totalPages,
          ),
        );
      });
    });
     on<GetEveryoneNextPage>((event, emit) async {
      if (state.currentPage! >= state.totalPages!) return;
      emit(state.copyWith(isloading: true, iserror: false));
      final nextPage = state.currentPage! + 1;

      final result = await _newAndHotService.newAndHotEveryoneWatching(page: nextPage);
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
            comingsoonlist:state.comingsoonlist,
            everyonewatchinglist: resp.results,
            isloading: false,
            iserror: false,
            currentPage: resp.page,
            totalPages: resp.totalPages,
          ),
        );
      });
    });
  }
}


