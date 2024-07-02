import 'package:dartz/dartz.dart';
import 'package:stream_space/domain/Downloads/model/downlods.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImage();
}
