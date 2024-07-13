import 'package:dartz/dartz.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';
import 'package:stream_space/domain/search/model/search_respo/search_respo.dart';

abstract class SearchService {
  Future<Either<MainFailures, SearchRespo>> searchMovies({
    required String movieQuery,
  });
}
