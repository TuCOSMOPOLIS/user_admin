import 'dart:math' as Math;
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:users_admin/interfaces/user-failures.dart';
import 'package:users_admin/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_admin/presentation/home/widgets/custom-drawer.dart';
import 'package:users_admin/presentation/home/widgets/user-item.dart';
import 'package:users_admin/presentation/users/user-form.dart';
import 'package:users_admin/providers.dart';

class Home extends StatelessWidget {
  final User user;
  const Home({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0,
      ),
      drawer: CustomDrawer(user: user),
      body: Center(
        // child: UserItem(user: user),
        child: Consumer(
          builder: (_, watch, __) {
            final state = watch(homeStateNotifier);

            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (users) {
                return PageView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, i) {
                    final color =
                        Color((Math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0);
                    return UserItem(
                      user: users[i],
                      color: color,
                    );
                  },
                );
              },
              error: () => Center(child: Text("Error")),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => UserForm()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



// Future Builder
// child: FutureBuilder(
//           future: context.read(userRepository).getUsers(),
//           builder: (context,
//               AsyncSnapshot<Either<UserFailure, List<User>>> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             }
//             if (snapshot.connectionState == ConnectionState.done) {
//               final failureOrSuccess = snapshot.data;
//               return failureOrSuccess!.fold((f) => Center(child: Text("Error")),
//                   (users) {
//                 return PageView.builder(
//                   itemCount: users.length,
//                   itemBuilder: (context, i) {
//                     return UserItem(user: users[i]);
//                   },
//                 );
//               });
//             }
//             return SizedBox();
//           },