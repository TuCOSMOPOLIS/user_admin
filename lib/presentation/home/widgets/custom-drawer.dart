import 'package:flutter/material.dart';
import 'package:users_admin/models/user.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              child: Text(
                user.name[0].toUpperCase(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(height: 15),
            TextButton.icon(
              onPressed: () => showLicensePage(context: context),
              icon: Icon(Icons.description),
              label: Text("Licences"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.logout),
              label: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
