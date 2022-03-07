import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/users/user-form-state.dart';
import 'package:users_admin/aplication/users/user-value-objects.dart';
import 'package:users_admin/models/user.dart';

class UserFormStateNotifier extends StateNotifier<UserFormState> {
  UserFormStateNotifier() : super(UserFormState.initial());

  void nameChanged(String value) {
    state = state.copyWith(name: Name(value));
  }

  void passwordChanged(String value) {
    state = state.copyWith(password: Password(value));
  }

  void roleChanged(String value) {
    state = state.copyWith(role: value);
  }

  void handleSubmit() {
    state.name.value.andThen(state.password.value).fold((f) {
      print("error");
      state = state.copyWith(showErrors: true);
    }, (_) {
      final user = User(
          name: state.name.getOrCrash,
          password: state.password.getOrCrash,
          role: state.role,
          active: false);
      print(user);
    });
  }
}
