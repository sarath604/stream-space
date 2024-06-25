
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_space/domain/core/di/injectabl.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future <void> configureinjection () async{
await $initGetIt(getIt,environment: Environment.prod);
}