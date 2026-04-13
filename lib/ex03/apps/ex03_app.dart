import 'package:btc7/ex03/views/home_screen.dart';
import 'package:flutter/material.dart';

class Ex03App extends StatelessWidget {
  const Ex03App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 3 - Settings Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
