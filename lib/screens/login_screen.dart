// ignore_for_file: prefer_const_declarations
// import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:thirty_days_flutter/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Username', hintText: 'Enter username'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Password', hintText: 'Enter password'),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.HomeRoute);
              },
              // style: TextButton.styleFrom(minimumSize: Size(300, 40), backgroundColor: Colors.deepPurple, ),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  fixedSize: const Size(300, 30)),
              child: const Text('Log In'),
            )
          ],
        ),
      ),
    );
  }
}
