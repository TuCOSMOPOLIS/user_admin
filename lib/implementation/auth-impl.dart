import 'dart:convert';
import 'package:users_admin/interfaces/auth-failures.dart';
import 'package:dartz/dartz.dart';
import 'package:users_admin/interfaces/auth-repository.dart';
import 'package:users_admin/models/user.dart';
import 'package:http/http.dart' as http;

class AuthImpl implements AuthRepository {
  @override
  Future<Either<AuthFailure, User>> loginWithCredentials(
      String user, String password) async {
    try {
      final body = {"name": user, "password": password};
      final uri = Uri.parse("http://localhost:4000/api/auth");
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(body),
      );
      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        final user = User.fromJSON(data['user']);
        return Right(user);
      }
      print(data["msg"]);
      return data["msg"] == "User doesn't exists."
          ? Left(UserNoExists())
          : Left(WrongPassword());
    } catch (e) {
      print(e);
      return Left(UnexpectedFailure());
    }
  }
}
