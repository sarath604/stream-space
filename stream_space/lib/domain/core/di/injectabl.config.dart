// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i10;
import '../../../application/New&Hot/newandhot_bloc.dart' as _i7;
import '../../../application/search/bloc/search_bloc.dart' as _i11;
import '../../../infrastructure/Downloads/downloads_repository.dart' as _i4;
import '../../../infrastructure/New&Hot/new_and_hot_impl.dart' as _i6;
import '../../../infrastructure/search/search_implement.dart' as _i9;
import '../../Downloads/i_downlods_repo.dart' as _i3;
import '../../New&Hot/new_and_hot_service.dart' as _i5;
import '../../search/search_service.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
  gh.lazySingleton<_i5.NewAndHotService>(() => _i6.NewAndHotImpl());
  gh.factory<_i7.NewandhotBloc>(
      () => _i7.NewandhotBloc(get<_i5.NewAndHotService>()));
  gh.lazySingleton<_i8.SearchService>(() => _i9.SearchImplement());
  gh.factory<_i10.DownloadsBloc>(
      () => _i10.DownloadsBloc(get<_i3.IDownloadsRepo>()));
  gh.factory<_i11.SearchBloc>(() => _i11.SearchBloc(
        get<_i3.IDownloadsRepo>(),
        get<_i8.SearchService>(),
      ));
  return get;
}
