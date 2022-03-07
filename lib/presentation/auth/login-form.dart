import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/aplication/auth/auth-state.dart';
import 'package:users_admin/interfaces/auth-failures.dart';
import 'package:users_admin/presentation/home/home.dart';
import 'package:users_admin/providers.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: ProviderListener<AuthState>(
                provider: authStateNotififer,
                onChange: (context, state) {
                  state.failureOrSuccessOption.fold(() {}, (failureOrSuccess) {
                    failureOrSuccess.fold((failure) {
                      String msg = "Server Error";
                      if (failure is UserNoExists) {
                        msg = "User doesn't exists.";
                      }
                      if (failure is WrongPassword) {
                        msg = "Wrong Password";
                      }
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(content: Text(msg)),
                        );
                    }, (user) {
                      Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(builder: (_) => Home(user: user)),
                      );
                    });
                  });
                },
                child: Consumer(
                  builder: (_, watch, __) {
                    final state = watch(authStateNotififer);
                    final notifier = context.read(authStateNotififer.notifier);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Sign in to continue",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 12),
                        TextFormField(
                          initialValue: "admin",
                          onChanged: notifier.userChanged,
                          decoration: InputDecoration(
                              labelText: "USERNAME",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              prefixIcon: Icon(Icons.person),
                              errorText: state.showErrors
                                  ? _getErrorText(state.user)
                                  : null
                              // errorText: state.user.fold(
                              //     (failure) =>
                              //         "User must be min 4 char length. ${failure.failedValue}",
                              //     (_) => null),
                              ),
                        ),
                        SizedBox(height: 12),
                        TextFormField(
                          initialValue: "admin1234",
                          obscureText: !state.showPassword,
                          onChanged: notifier.passwordChanged,
                          decoration: InputDecoration(
                              labelText: "PASSWORD",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  icon: Icon(Icons.visibility),
                                  onPressed: notifier.toggleShowPassword),
                              errorText: state.showErrors
                                  ? _getErrorText(state.password)
                                  : null
                              // errorText: state.password.fold(
                              //     (failure) =>
                              //         "Password must be min 4 char length. ${failure.failedValue}",
                              //     (_) => null),
                              ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: state.loading ? null : notifier.onSubmit,
                            child:
                                Text("Log In", style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? _getErrorText(Either<ValueFailure<String>, String> value) {
    return value.fold((failure) {
      if (failure is InvalidUser) {
        return "User must be min 4 char length. ${failure.failedValue}";
      }
      if (failure is InvalidPassword) {
        return "Password must be min 4 char length. ${failure.failedValue}";
      }
      return "Unexpected Error";
    }, (_) => null);
  }
}
