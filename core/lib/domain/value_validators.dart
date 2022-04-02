import 'package:dartz/dartz.dart';
import 'package:string_validator/string_validator.dart';

import 'failures.dart';

/// validate the [input] must have email requirement.
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return right(input);
  }

  return left(ValueFailure.invalidEmail(failedValue: input));
}

/// validate the [input] must have password requirement.
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  }

  return left(ValueFailure.shortPassword(failedValue: input));
}

/// validate the [input] must not empty String.
Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }

  return left(ValueFailure.empty(failedValue: input));
}

/// validate if the [input] must be single line.
Either<ValueFailure<String>, String> validateStringSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiLine(failedValue: input));
  }

  return right(input);
}

/// validate the [input] mus not exceed [maxLength].
Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

/// validate the [input] must greater than 0.
Either<ValueFailure<num>, num> validateNominalValue(num input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNominal(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUrl(String input) {
  if (isURL(input)) return right(input);

  return left(ValueFailure.invalidUrl(failedValue: input));
}
