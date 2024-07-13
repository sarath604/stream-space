import 'package:dartz/dartz.dart';
import 'package:stream_space/domain/New&Hot/model/new_and_hot_respo/new_and_hot_respo.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

abstract class NewAndHotService {
  Future<Either<MainFailures, NewAndHotRespo>> newAndHotcomingsoon({required int page});
  Future<Either<MainFailures, NewAndHotRespo>> newAndHotEveryoneWatching({required int page});
}
