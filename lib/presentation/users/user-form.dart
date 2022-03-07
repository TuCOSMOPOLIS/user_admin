import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/users/user-value-failures.dart';
import 'package:users_admin/models/roles.dart';
import 'package:users_admin/providers.dart';

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
        child: Consumer(
          builder: (_, watch, __) {
            final notifier = context.read(userFormStateNotifier.notifier);
            final state = watch(userFormStateNotifier);

            return Column(
              children: [
                TextFormField(
                  onChanged: notifier.nameChanged,
                  decoration: InputDecoration(
                      labelText: "NAME",
                      prefixIcon: Icon(Icons.person),
                      errorText: state.showErrors
                          ? _getErrorText(state.name.value)
                          : null),
                ),
                TextFormField(
                  onChanged: notifier.passwordChanged,
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      prefixIcon: Icon(Icons.lock),
                      errorText: state.showErrors
                          ? _getErrorText(state.password.value)
                          : null),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Role:"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: DropdownButton<String>(
                        value: state.role,
                        onChanged: (value) => notifier.roleChanged(value!),
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
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: notifier.handleSubmit,
                    child: Text(
                      "Create",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String? _getErrorText(Either<UserValueFailure<dynamic>, dynamic> value) {
    return value.fold(
        (f) => f.when(
              invalidName: (failedValue) => "Invalid Name $failedValue",
              invalidPassword: (failedValue) => "Invalid Password $failedValue",
            ),
        (_) => null);
  }
}
