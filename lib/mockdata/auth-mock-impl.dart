import 'package:dartz/dartz.dart';
import 'package:users_admin/interfaces/auth-failures.dart';
import 'package:users_admin/interfaces/auth-repository.dart';
import 'package:users_admin/models/user.dart';

class AuthMockImpl implements AuthRepository {
  @override
  Future<Either<AuthFailure, User>> loginWithCredentials(
      String username, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    if (username != "John") {
      return Left(UserNoExists());
    }
    if (password != "Test1234") {
      return Left(WrongPassword());
    }
    final loggedUser = User(
        uid: "123",
        name: "John",
        password: "Test1234",
        role: "role",
        active: true);
    return Right(loggedUser);
  }
}
