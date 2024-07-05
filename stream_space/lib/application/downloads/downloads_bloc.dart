import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/Downloads/i_downlods_repo.dart';
import 'package:stream_space/domain/Downloads/model/downlods.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureOrSuccessOpion: none(),
        ),
      );
      final downloadsoption = await _downloadsRepo.getDownloadsImage();

      emit(
        downloadsoption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsFailureOrSuccessOpion: some(left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadsFailureOrSuccessOpion: Some(right(success)),
          ),
        ),
      );
    });
  }
}
