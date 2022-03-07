import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/auth/auth-state.dart';
import 'package:users_admin/aplication/auth/auth-value-failures.dart';
import 'package:users_admin/interfaces/auth-repository.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final AuthRepository _repository;

  AuthStateNotifier(this._repository) : super(AuthState.initial());

  void userChanged(String input) {
    final user = input.trim();
    if (user.length >= 4) {
      state = state.copyWith(
        user: Right(user),
        failureOrSuccessOption: const None(),
      );
    } else {
      state = state.copyWith(
        user: Left(InvalidUser(user)),
        failureOrSuccessOption: const None(),
      );
    }
  }

  void passwordChanged(String input) {
    final password = input.trim();
    if (password.length >= 4) {
      state = state.copyWith(
        password: Right(password),
        failureOrSuccessOption: const None(),
      );
    } else {
      state = state.copyWith(
        password: Left(InvalidPassword(password)),
        failureOrSuccessOption: const None(),
      );
    }
  }

  void toggleShowPassword() {
    state = state.copyWith(
      showPassword: !state.showPassword,
      failureOrSuccessOption: const None(),
    );
  }

  void onSubmit() {
    state.user.andThen(state.password).fold(
      (failure) {
        state = state.copyWith(showErrors: true);
      },
      (_) async {
        state = state.copyWith(loading: true);
        final user = state.userValue;
        final password = state.passwordValue;
        final failureOrSuccess =
            await _repository.loginWithCredentials(user, password);
        state = state.copyWith(
          loading: false,
          failureOrSuccessOption: Some(failureOrSuccess),
        );
      },
    );
  }
}
