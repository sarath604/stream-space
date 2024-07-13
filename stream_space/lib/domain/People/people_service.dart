import 'package:dartz/dartz.dart';
import 'package:stream_space/domain/People/model/peoplemodel/peoplemodel.dart';
import 'package:stream_space/domain/core/failures/main_failures.dart';

abstract class PeopleService {
  Future<Either<MainFailures, Peoplemodel>> getpeopleImage({required  int page});
}
