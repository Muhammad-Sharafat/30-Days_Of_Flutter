// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:thirty_days_flutter/screens/home_screen.dart';

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

    return const MaterialApp(
      home: SafeArea(child: HomeScreen()),
    );
  }
}
