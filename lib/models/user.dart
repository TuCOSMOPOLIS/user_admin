import 'package:users_admin/models/roles.dart';

class User {
  final String? uid;
  final String name;
  final String password;
  final String role;
  final bool active;

  bool get isAdmin => role == Role.ADMIN;

  User(
      {this.uid,
      required this.name,
      required this.password,
      required this.role,
      required this.active});

  factory User.fromJSON(Map<String, dynamic> json) => User(
        uid: json['uid'],
        name: json['name'],
        password: json['password'],
        role: json['role'],
        active: json['active'],
      );

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, password: $password, role: $role, active: $active)';
  }
}
