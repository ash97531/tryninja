import 'package:brew_crew/models/users.dart';
import 'package:brew_crew/screens/authenticate/authenticate.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    // final users = Provider.of<Users?>(context);
    // print(users);

    // return either home or authenicate
    if (firebaseUser == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
