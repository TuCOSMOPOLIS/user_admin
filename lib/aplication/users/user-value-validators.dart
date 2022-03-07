import 'package:dartz/dartz.dart';
import 'package:users_admin/aplication/users/user-value-failures.dart';

Either<UserValueFailure<String>, String> validateName(String value) {
  if (value.trim().length >= 4) {
    return Right(value);
  }
  return Left(InvalidName(value));
}

Either<UserValueFailure<String>, String> validatePassword(String value) {
  if (value.trim().length >= 4) {
    return Right(value);
  }
  return Left(InvalidName(value));
}
