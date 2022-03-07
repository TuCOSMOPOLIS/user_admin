import 'package:flutter/material.dart';
import 'package:users_admin/models/user.dart';
import 'package:users_admin/presentation/auth/login-form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/presentation/home/home.dart';

void main() {
  runApp(
    ProviderScope(
      child: UsersAdminApp(),
    ),
  );
}

class UsersAdminApp extends StatelessWidget {
  const UsersAdminApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(
          user: User(
              uid: "uid",
              name: "name",
              password: "password",
              role: "admin",
              active: true)),
    );
  }
}
