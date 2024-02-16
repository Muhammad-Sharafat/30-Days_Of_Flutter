// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String channelName = 'codepur';
    const days = 30;
    Color blue = Colors.blue;
    String title = '30 Days of Flutter';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        title: Text(title),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          child: const Text('Welcome to $days days of flutter by $channelName'),
        ),
      ),
    );
  }
}

// void titled(
//    String name,
// ) {
//   Text(
//     name,
//     style:const TextStyle(color: Colors.white),
//   );
// }
