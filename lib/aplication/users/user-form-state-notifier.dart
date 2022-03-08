import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/users/user-form-state.dart';
import 'package:users_admin/aplication/users/user-value-objects.dart';
import 'package:users_admin/interfaces/user-failures.dart';
import 'package:users_admin/interfaces/user-repository.dart';
import 'package:users_admin/models/user.dart';

class UserFormStateNotifier extends StateNotifier<UserFormState> {
  final UserRepository _repository;
  UserFormStateNotifier(this._repository) : super(UserFormState.initial());

  void loadUser(User user) {
    state = UserFormState.loadUser(user);
  }

  void nameChanged(String value) {
    state = state.copyWith(
      name: Name(value),
      failureOrSuccessOption: const None(),
    );
  }

  void passwordChanged(String value) {
    state = state.copyWith(
      password: Password(value),
      failureOrSuccessOption: const None(),
    );
  }

  void roleChanged(String value) {
    state = state.copyWith(
      role: value,
      failureOrSuccessOption: const None(),
    );
  }

  void handleSubmit(Option<User> optionUser) {
    optionUser.fold(() {
      createUser();
    }, (oldUser) {
      state.name.value.andThen(state.password.value).fold((f) {
        state = state.copyWith(showErrors: true);
      }, (_) async {
        final newUser = state.user.copyWith(uid: oldUser.uid);
        if (oldUser == newUser) {
          state = state.copyWith(
            failureOrSuccessOption: Some(Left(UserFailure.sameUser())),
          );
        } else {
          final failureOrSuccess =
              await _repository.updateUser("621d4e58d28b37d0336095de", newUser);
          state = state.copyWith(
            failureOrSuccessOption: Some(failureOrSuccess),
            loading: false,
          );
        }
      });
    });
  }

  void createUser() {
    state.name.value.andThen(state.password.value).fold((f) {
      state = state.copyWith(showErrors: true);
    }, (_) async {
      state = state.copyWith(loading: true);
      final user = state.user;
      final failureOrSuccess =
          await _repository.createUser("621d4e58d28b37d0336095de", user);
      state = state.copyWith(
        failureOrSuccessOption: Some(failureOrSuccess),
        loading: false,
      );
    });
  }
}
