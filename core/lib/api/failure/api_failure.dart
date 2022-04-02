import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.badNetwork() = _BadNetwork;
  const factory ApiFailure.unauthorized() = _Unauthorized;
  const factory ApiFailure.internalServerError() = _InternalServerError;
  const factory ApiFailure.serverError({
    int? statusCode,
    String? statusMessage,
    dynamic responseData,
  }) = _ServerError;
}
