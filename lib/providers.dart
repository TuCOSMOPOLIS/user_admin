import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/auth/auth-state-notifier.dart';
import 'package:users_admin/aplication/auth/auth-state.dart';
import 'package:users_admin/implementation/auth-impl.dart';
import 'package:users_admin/implementation/user-impl.dart';
import 'package:users_admin/interfaces/auth-repository.dart';
import 'package:users_admin/interfaces/user-repository.dart';
import 'package:users_admin/models/user.dart';

import 'interfaces/user-failures.dart';

final authRepository = Provider<AuthRepository>((_) => AuthImpl());
final userRepository = Provider<UserRepository>((_) => UserImpl());

final authStateNotififer = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(ref.watch(authRepository)),
);

final getUsers = FutureProvider<Either<UserFailure, List<User>>>(
  (ref) => ref.watch(userRepository).getUsers(),
);
