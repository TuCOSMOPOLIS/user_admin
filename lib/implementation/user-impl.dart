import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:users_admin/interfaces/user-failures.dart';
import 'package:users_admin/interfaces/user-repository.dart';
import 'package:users_admin/models/user.dart';

class UserImpl implements UserRepository {
  @override
  Future<Either<UserFailure, List<User>>> getUsers() async {
    try {
      final uri = Uri.parse("http://localhost:4000/api/auth");
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final usersRaw = data["users"] as List<dynamic>;
        final users =
            usersRaw.map((userRaw) => User.fromJSON(userRaw)).toList();
        return Right(users);
      }
      return Left(UnexpectedFailure());
    } catch (e) {
      print(e);
      return Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<UserFailure, User>> createUser(
      String authorUid, User user) async {
    try {
      final uri = Uri.parse("http://localhost:4000/api/auth/create");
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(user.toJson(authorUid)),
      );
      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Right(User.fromJSON(data["user"]));
      }
      print(data);
      return Left(UserAlreadyExists());
    } catch (e) {
      print(e);
      return Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<UserFailure, User>> updateUser(
      String authorUid, User user) async {
    try {
      final uri = Uri.parse("http://localhost:4000/api/auth/${user.uid}");
      final response = await http.put(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(user.toJson(authorUid)),
      );
      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Right(User.fromJSON(data["user"]));
      }
      print(data);
      return Left(UnexpectedFailure());
    } catch (e) {
      print(e);
      return Left(UnexpectedFailure());
    }
  }
}
