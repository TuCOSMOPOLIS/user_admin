import 'package:flutter/material.dart';
import 'package:users_admin/models/roles.dart';

class UserForm extends StatelessWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "NAME",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "PASSWORD",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: DropdownButton<String>(
                value: "admin",
                onChanged: (String? value) {
                  print(value);
                },
                underline: SizedBox(),
                iconSize: 30,
                isExpanded: true,
                items: Role.rolesMap.entries
                    .map(
                      (MapEntry<String, String> entry) =>
                          DropdownMenuItem<String>(
                        child: Text(entry.value),
                        value: entry.key,
                      ),
                    )
                    .toList(),
                // items: Role.roles.map((value) {
                //   return DropdownMenuItem<String>(
                //     child: Text(Role.getTitle(value)),
                //     value: value,
                //   );
                // }).toList(),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Create",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
