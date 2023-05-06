import 'package:firebase_project/screens/login.dart';
import 'package:flutter/material.dart';

import '../screens/register.dart';

class UserAuth extends StatefulWidget {
  const UserAuth({super.key});

  @override
  State<UserAuth> createState() => _UserAuthState();
}

class _UserAuthState extends State<UserAuth> {
  bool showLoginPage = true;

  void toggleScreen() {
    showLoginPage = !showLoginPage;
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreen);
    } else {
      return RegisterPage(showLoginPage: toggleScreen);
    }
  }
}
