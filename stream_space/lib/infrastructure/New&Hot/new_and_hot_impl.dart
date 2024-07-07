import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/New&Hot/model/new_and_hot_respo/new_and_hot_respo.dart';
import 'package:stream_space/domain/New&Hot/new_and_hot_service.dart';
import 'package:stream_space/domain/core/api_end_points.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';
@LazySingleton(as: NewAndHotService)
class NewAndHotImpl implements NewAndHotService{
  @override
  Future<Either<MainFailures, NewAndHotRespo>> newAndHotEveryoneWatching()async {
   try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.discovertv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHotRespo.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, NewAndHotRespo>> newAndHotcomingsoon()async {
     try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.discovermovie,);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHotRespo.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }
  
}