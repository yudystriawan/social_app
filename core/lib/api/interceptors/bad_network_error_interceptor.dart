import 'package:dio/dio.dart';

import '../../injection.dart';
import '../errors/bad_network_error.dart';
import '../network/network_info.dart';

class BadNetwotkErrorInterceptor extends Interceptor {
  final _networkInfo = getIt<NetworkInfo>();

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    final isConnected = await _networkInfo.isConnected;
    if (err.response == null || !isConnected) {
      return handler.reject(BadNetworkError(err));
    }

    return handler.next(err);
  }
}
