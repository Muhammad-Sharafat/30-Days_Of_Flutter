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
  String name = '';
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    // Text login
    // String text1 = Colors.white as String;
    // String back2 = Colors.deepOrange;
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
            Text(
              'Welcome $name',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: changeButton ? 50 : 40,
                width: changeButton ? 50 : 300,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    shape: changeButton ? BoxShape.circle : BoxShape.rectangle),
                alignment: Alignment.center,
                child: changeButton
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //
            //   },
            //   // style: TextButton.styleFrom(minimumSize: Size(300, 40), backgroundColor: Colors.deepPurple, ),
            //   style: ElevatedButton.styleFrom(
            //       foregroundColor: Colors.white,
            //       backgroundColor: Colors.deepPurple,
            //       fixedSize: const Size(300, 30)),
            //   child: const Text('Log In'),
            // )
          ],
        ),
      ),
    );
  }
}
