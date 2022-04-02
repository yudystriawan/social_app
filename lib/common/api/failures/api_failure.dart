import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.unexpectedFailure() = _UnexpectedFailure;
  const factory ApiFailure.serverFailure({
    int? code,
    String? errMessage,
  }) = _ServerFailure;
  const factory ApiFailure.badNetworkFailure() = _BadNetworkFailure;
  const factory ApiFailure.unauthenticatedFailure() = _UnauthenticatedFailure;
}
