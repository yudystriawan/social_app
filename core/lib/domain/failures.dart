import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = _InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = _ShortPassword<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = _Empty<T>;
  const factory ValueFailure.multiLine({
    required T failedValue,
  }) = _MultiLine<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength<T>;
  const factory ValueFailure.invalidNominal({
    required T failedValue,
  }) = _InvalidNominal<T>;
  const factory ValueFailure.invalidUrl({
    required T failedValue,
  }) = _InvalidUrl<T>;
}
