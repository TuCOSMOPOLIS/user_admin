import 'package:dartz/dartz.dart';
import 'package:users_admin/aplication/users/user-value-failures.dart';
import 'package:users_admin/aplication/users/user-value-validators.dart';

abstract class ValueObject<T> {
  Either<UserValueFailure<T>, T> get value;

  T get getOrCrash => value.fold((_) => throw Error(), id);
}

class Name extends ValueObject<String> {
  final Either<UserValueFailure<String>, String> value;

  // String get getOrCrash => value.fold((_) => throw Error(), id);

  factory Name(String value) {
    return Name._(validateName(value));
  }

  Name._(this.value);
}

class Password extends ValueObject<String> {
  final Either<UserValueFailure<String>, String> value;

  // String get getOrCrash => value.fold((_) => throw Error(), id);

  factory Password(String value) {
    return Password._(validatePassword(value));
  }

  Password._(this.value);
}
