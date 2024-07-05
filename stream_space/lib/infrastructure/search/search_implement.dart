import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/core/api_end_points.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';
import 'package:stream_space/domain/search/model/search_respo/search_respo.dart';
import 'package:stream_space/domain/search/search_service.dart';
@LazySingleton(as: SearchService)
class SearchImplement implements SearchService{
  @override
  Future<Either<MainFailures, SearchRespo>> searchMovies({required String movieQuery}) async{
     try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.search,queryParameters: {'query':movieQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchRespo.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }
  
}