import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: const Text('Money Tracker'),
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}