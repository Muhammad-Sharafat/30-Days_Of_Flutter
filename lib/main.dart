import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    String channelName = 'Codepur';
    int days = 30;

    return MaterialApp(
      home: Material(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Text('Welcome to $days days of flutter by $channelName'),
          ),
        ),
      ),
    );
  }
}
