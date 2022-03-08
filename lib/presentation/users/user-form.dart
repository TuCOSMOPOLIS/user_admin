import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/users/user-form-state.dart';
import 'package:users_admin/aplication/users/user-value-failures.dart';
import 'package:users_admin/models/roles.dart';
import 'package:users_admin/models/user.dart';
import 'package:users_admin/providers.dart';

class UserForm extends HookWidget {
  final User? user;

  const UserForm({Key? key, this.user}) : super(key: key);
  // @override
  // void initState() {
  //   if (widget.user != null) {
  //     context.read(userFormStateNotifier.notifier).loadUser(widget.user!);
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      if (user != null) {
        context.read(userFormStateNotifier.notifier).loadUser(user!);
      }
      // return () {
      // dispose
      //  metodos de limpieza
      // };
    }, [user]);

    return Scaffold(
      appBar: AppBar(
        title: Text(user != null ? "Update" : "Create"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProviderListener<UserFormState>(
          provider: userFormStateNotifier,
          onChange: (context, state) {
            state.failureOrSuccessOption.fold(
              () {},
              (failureOrSuccess) => failureOrSuccess.fold((f) {
                showSnackbar(
                  context,
                  f.when(
                      unexpectedFailure: () => "Server Error",
                      userAlreadyExists: () => "User Already Exists",
                      sameUser: () =>
                          "User can't update, because there aren't changes."),
                );
              }, (createdOrUpdatedUser) {
                showSnackbar(
                    context, user != null ? "User Updated" : "User Created");
                if (user != null) {
                  context
                      .read(homeStateNotifier.notifier)
                      .updateUser(createdOrUpdatedUser);
                } else {
                  context
                      .read(homeStateNotifier.notifier)
                      .addUser(createdOrUpdatedUser);
                }

                Navigator.of(context).pop();
              }),
            );
          },
          child: Consumer(
            builder: (_, watch, __) {
              final notifier = context.read(userFormStateNotifier.notifier);
              final state = watch(userFormStateNotifier);

              return Column(
                children: [
                  TextFormField(
                    initialValue: user?.name,
                    onChanged: notifier.nameChanged,
                    readOnly: user != null,
                    decoration: InputDecoration(
                        labelText: "NAME",
                        prefixIcon: Icon(Icons.person),
                        errorText: state.showErrors
                            ? _getErrorText(state.name.value)
                            : null),
                  ),
                  TextFormField(
                    initialValue: user?.password,
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
                      onPressed: state.loading
                          ? null
                          : () => notifier.handleSubmit(optionOf(user)),
                      // : () => notifier.handleSubmit( user!= null ? Some(user!) : const None()  ),
                      child: Text(
                        user != null ? "Update" : "Create",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
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

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
