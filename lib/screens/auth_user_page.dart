import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/screens/login.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class UserAuth extends StatefulWidget {
  const UserAuth({super.key});

  @override
  State<UserAuth> createState() => _UserAuthState();
}

class _UserAuthState extends State<UserAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return const HomePage();
        }else{
          return const LoginPage();
        }
      },),
    );
  }
}
