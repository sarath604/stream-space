import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/People/model/peoplemodel/peoplemodel.dart';
import 'package:stream_space/domain/People/people_service.dart';
import 'package:stream_space/domain/core/api_end_points.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

@LazySingleton(as: PeopleService)
class PeopleImpl extends PeopleService {
  @override
  Future<Either<MainFailures, Peoplemodel>> getpeopleImage({required int page}) async {
    const url= ApiEndPoints.popularpeople;
   
  
    try {
      final Response response =
          await Dio(BaseOptions()).get('$url$page');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Peoplemodel.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
