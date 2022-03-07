import 'package:dartz/dartz.dart';
import 'package:users_admin/interfaces/auth-failures.dart';
import 'package:users_admin/models/user.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, User>> loginWithCredentials(
      String user, String password);
}
