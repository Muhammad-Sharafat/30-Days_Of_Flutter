// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String login = 'Login Screen';
    return Material(
      child: Center(child: Text(login)),
    );
  }
}
