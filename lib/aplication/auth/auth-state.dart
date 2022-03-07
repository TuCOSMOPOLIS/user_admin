import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:users_admin/aplication/auth/auth-value-failures.dart';
import 'package:users_admin/interfaces/auth-failures.dart';
import 'package:users_admin/models/user.dart';

@immutable
class AuthState {
  final Either<ValueFailure<String>, String> user;
  final Either<ValueFailure<String>, String> password;
  final bool loading;
  final bool showErrors;
  final bool showPassword;
  final Option<Either<AuthFailure, User>> failureOrSuccessOption;

  String get userValue => user.fold((f) => throw Error(), (user) => user);
  String get passwordValue => password.fold((f) => throw Error(), id);

  AuthState(
      {required this.user,
      required this.password,
      required this.loading,
      required this.showErrors,
      required this.failureOrSuccessOption,
      required this.showPassword});

  factory AuthState.initial() {
    return AuthState(
        // user: Left(InvalidUser("")),
        // password: Left(InvalidPassword("")),
        user: Right("admin"),
        password: Right("admin1234"),
        loading: false,
        showErrors: false,
        showPassword: false,
        failureOrSuccessOption: const None());
  }

  AuthState copyWith({
    Either<ValueFailure<String>, String>? user,
    Either<ValueFailure<String>, String>? password,
    bool? loading,
    bool? showErrors,
    bool? showPassword,
    Option<Either<AuthFailure, User>>? failureOrSuccessOption,
  }) {
    return AuthState(
        user: user ?? this.user,
        password: password ?? this.password,
        loading: loading ?? this.loading,
        showErrors: showErrors ?? this.showErrors,
        showPassword: showPassword ?? this.showPassword,
        failureOrSuccessOption:
            failureOrSuccessOption ?? this.failureOrSuccessOption);
  }

  @override
  String toString() =>
      'AuthState(user: $user, password: $password, loading: $loading)';
}
