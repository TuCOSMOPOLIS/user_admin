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

  Map<String, dynamic> toJson(String authorUid) {
    return {
      "authorUid": authorUid,
      "name": name,
      "password": password,
      "role": role
    };
  }

  User copyWith({
    String? uid,
    String? name,
    String? password,
    String? role,
    bool? active,
  }) {
    return User(
      uid: uid,
      name: name ?? this.name,
      password: password ?? this.password,
      role: role ?? this.role,
      active: active ?? this.active,
    );
  }

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, password: $password, role: $role, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.uid == uid &&
        other.name == name &&
        other.password == password &&
        other.role == role &&
        other.active == active;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        name.hashCode ^
        password.hashCode ^
        role.hashCode ^
        active.hashCode;
  }
}
