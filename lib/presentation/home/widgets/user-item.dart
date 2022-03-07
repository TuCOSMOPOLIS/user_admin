import 'package:flutter/material.dart';
import 'package:users_admin/models/user.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    Key? key,
    required this.user,
    this.color = Colors.grey,
  }) : super(key: key);

  final User user;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            child: Text(
              user.name[0].toUpperCase(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                user.role == "admin" ? Icons.security : Icons.person,
                color: Colors.white,
              ),
              Text(
                user.name,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
                iconSize: 30,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                iconSize: 30,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
