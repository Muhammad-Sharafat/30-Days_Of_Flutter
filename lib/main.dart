// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirty_days_flutter/screens/home_screen.dart';
import 'package:thirty_days_flutter/screens/login_screen.dart';
import 'package:thirty_days_flutter/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // String channelName = 'Codepur';
    // int days = 30;
    // double pie = 3.14;
    // bool isMale = true;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      theme: ThemeData(
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),

      routes: {
        "/": (context) => const LoginScreen(),
        MyRoutes.HomeRoute: (context) => const HomeScreen(),
        MyRoutes.LoginRoute: (context) => const LoginScreen(),
      },
    );
  }
}
