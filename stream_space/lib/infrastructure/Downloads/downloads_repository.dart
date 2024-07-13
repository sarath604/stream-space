import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/Downloads/i_downlods_repo.dart';
import 'package:stream_space/domain/Downloads/model/downlods.dart';
import 'package:stream_space/domain/core/api_end_points.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadlist = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        // print(downloadlist);
        return Right(downloadlist);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
