import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/home/home-state.dart';
import 'package:users_admin/interfaces/user-repository.dart';
import 'package:users_admin/models/user.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  final UserRepository _repository;

  HomeStateNotifier(this._repository) : super(HomeState.loading()) {
    init();
  }

  Future<void> init() async {
    final failureOrSuccess = await _repository.getUsers();
    failureOrSuccess.fold((_) {
      state = HomeState.error();
    }, (users) {
      state = HomeState.loaded(users: users);
    });
  }

  void addUser(User user) {
    final userList = state.maybeWhen(
      loaded: (users) => users,
      orElse: () => <User>[],
    );
    state = HomeState.loaded(users: [user, ...userList]);
  }
}
