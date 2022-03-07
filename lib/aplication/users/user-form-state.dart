import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:users_admin/aplication/users/user-value-failures.dart';
import 'package:users_admin/aplication/users/user-value-objects.dart';
import 'package:users_admin/models/roles.dart';

part 'user-form-state.freezed.dart';

@freezed
class UserFormState with _$UserFormState {
  const UserFormState._();

  factory UserFormState({
    required Name name,
    required Password password,
    @Default(Role.CASHIER) String role,
    @Default(false) bool loading,
    @Default(false) bool showErrors,
  }) = _UserFormState;

  // String get nameValue => name.value.fold((f) => throw Error(), id);
  // String get passwordValue => password.value.fold((f) => throw Error(), id);

  factory UserFormState.initial() {
    return UserFormState(
      name: Name(""),
      password: Password(""),
    );
  }
}
