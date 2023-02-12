// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_report/data/weather_list/repository/weather_list_repository.dart'
    as _i4;
import 'package:weather_report/data/weather_list/source/weather_list_source.dart'
    as _i3;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.WeatherListSource>(() => _i3.WeatherListSource());
  gh.factory<_i4.WeatherListRepository>(
      () => _i4.WeatherListRepository(gh<_i3.WeatherListSource>()));
  return getIt;
}
