import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../user/user.dart';
import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthRepository {
  Future<Option<UserDomain>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
