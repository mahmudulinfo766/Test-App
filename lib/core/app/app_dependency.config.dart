// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:test_app/core/app/app_dependency.dart' as _i466;
import 'package:test_app/core/app/app_preference.dart' as _i109;
import 'package:test_app/features/screen/internet_checking/cubit/internet_cubit.dart'
    as _i116;
import 'package:test_app/features/screen/theme/cubit/theme_cubit.dart' as _i953;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i361.Dio>(() => appModule.dio);
  gh.factory<_i109.AppPreferences>(() => _i109.AppPreferences());
  gh.factory<_i116.InternetCubit>(() => _i116.InternetCubit());
  gh.factory<_i953.ThemeCubit>(() => _i953.ThemeCubit());
  return getIt;
}

class _$AppModule extends _i466.AppModule {}
