import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pingui_app/pages/Login.dart';
import 'package:pingui_app/routes/main_navbar.dart';
import 'package:pingui_app/user/session.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatefulWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser == null) return const LoginPage();

    return MultiProvider(
        providers: [
          Provider<Session>(create: (_) => Session(context, firebaseUser)),
        ],
        child: const Scaffold(
          body: MainNavbar(),
        ));
  }
}
