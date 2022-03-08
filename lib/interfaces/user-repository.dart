import 'package:dartz/dartz.dart';
import 'package:users_admin/interfaces/user-failures.dart';
import 'package:users_admin/models/user.dart';

abstract class UserRepository {
  Future<Either<UserFailure, List<User>>> getUsers();
  Future<Either<UserFailure, User>> createUser(String authorUid, User user);
}
