import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/Downloads/i_downlods_repo.dart';
import 'package:stream_space/domain/Downloads/model/downlods.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';
import 'package:stream_space/domain/search/model/search_respo/search_respo.dart';
import 'package:stream_space/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadservice;
  final SearchService _searchservice;
  SearchBloc(this._downloadservice, this._searchservice)
      : super(SearchState.initial()) {
/*
idle state
*/
    on<Initialize>((event, emit) async {
      // get trending
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }
      emit(
        const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final result = await _downloadservice.getDownloadsImage();
      result.fold(
        (MainFailures f) {
          emit(
            const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true,
            ),
          );
        },
        (List<Downloads> list) {
          emit(
            SearchState(
              searchResultList: [],
              idleList: list,
              isLoading: false,
              isError: false,
            ),
          );
        },
      );
      // show to ui
    });
/*
Search result state
*/
    on<SearchMovie>((event, emit) async {
        emit(
        const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      // call search movie api
     final searchResult = await _searchservice.searchMovies(movieQuery: event.movieQuery);
      // show to ui
      searchResult.fold((MainFailures f) {
 emit(
            const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true,
            ),
          );
      }, (SearchRespo r) {
 emit(
            SearchState(
              searchResultList: r.results,
              idleList: [],
              isLoading: false,
              isError: false,
            ),
          );
      });
    });
  }
}
