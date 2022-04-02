import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'errors.dart';
import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Get value object.
  ///
  /// Throw an [UnexpectedValueError] if the value object is left.
  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  /// Get value object
  ///
  /// Return [dflt] value whe object is left.
  T getOrElse(T dflt) => value.getOrElse(() => dflt);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (f) => left(f),
      (_) => right(unit),
    );
  }

  /// Return `true` if value is right.
  bool isValid() => value.isRight();

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value ($value)';
}
