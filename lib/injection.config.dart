// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:core/api/api_client.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'common/di/api_client_di.dart' as _i5;
import 'common/di/shared_preferences_di.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiClientDi = _$ApiClientDi();
  final sharedPreferencesDi = _$SharedPreferencesDi();
  gh.lazySingleton<_i3.ApiClient>(() => apiClientDi.client);
  await gh.factoryAsync<_i4.SharedPreferences>(() => sharedPreferencesDi.prefs,
      preResolve: true);
  return get;
}

class _$ApiClientDi extends _i5.ApiClientDi {}

class _$SharedPreferencesDi extends _i6.SharedPreferencesDi {}
