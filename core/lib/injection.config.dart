// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'api/network/network_info.dart' as _i5;
import 'di/connectivity_di.dart' as _i6;
import 'di/dio_di.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final connectivityDi = _$ConnectivityDi();
  final dioDi = _$DioDi();
  gh.lazySingleton<_i3.Connectivity>(() => connectivityDi.connectivity);
  gh.lazySingleton<_i4.Dio>(() => dioDi.dio);
  gh.lazySingleton<_i5.NetworkInfo>(
      () => _i5.NetworkInfo(get<_i3.Connectivity>()));
  return get;
}

class _$ConnectivityDi extends _i6.ConnectivityDi {}

class _$DioDi extends _i7.DioDi {}
