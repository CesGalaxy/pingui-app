import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Session {
  User user;
  BuildContext authWrapperContext;

  Session(this.authWrapperContext, this.user);
}
