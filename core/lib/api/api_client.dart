import 'package:core/api/failure/api_failure.dart';
import 'package:core/injection.dart';
import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter/foundation.dart';

import 'errors/bad_network_error.dart';
import 'errors/internal_server_error.dart';
import 'errors/unauthorized_error.dart';
import 'interceptors/bad_network_error_interceptor.dart';
import 'interceptors/internal_server_error_interceptor.dart';
import 'interceptors/unauthorized_interceptor.dart';

class ApiClient {
  final Dio _dio = getIt<Dio>();
  final String baseUrl;

  ApiClient(this.baseUrl) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 60).inMilliseconds;

    if (kDebugMode) _dio.interceptors.add(dioLoggerInterceptor);

    _dio.interceptors.add(BadNetwotkErrorInterceptor());
    _dio.interceptors.add(InternalServerErrorInterceptor());
    _dio.interceptors.add(UnauthorizedInterceptor());
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on BadNetworkError {
      throw const ApiFailure.badNetwork();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on DioError catch (e) {
      throw ApiFailure.serverError(
        statusCode: e.response?.statusCode,
        statusMessage: e.response?.statusMessage,
        responseData: e.response?.data,
      );
    }
  }

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on BadNetworkError {
      throw const ApiFailure.badNetwork();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on DioError catch (e) {
      throw ApiFailure.serverError(
        statusCode: e.response?.statusCode,
        statusMessage: e.response?.statusMessage,
        responseData: e.response?.data,
      );
    }
  }

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.delete(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on BadNetworkError {
      throw const ApiFailure.badNetwork();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on DioError catch (e) {
      throw ApiFailure.serverError(
        statusCode: e.response?.statusCode,
        statusMessage: e.response?.statusMessage,
        responseData: e.response?.data,
      );
    }
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.get(
        path,
        options: Options(
          headers: headers,
          validateStatus: validateStatus,
          followRedirects: followRedirects,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on BadNetworkError {
      throw const ApiFailure.badNetwork();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on DioError catch (e) {
      throw ApiFailure.serverError(
        statusCode: e.response?.statusCode,
        statusMessage: e.response?.statusMessage,
        responseData: e.response?.data,
      );
    }
  }
}
