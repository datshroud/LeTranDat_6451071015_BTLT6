import 'package:btc7/ex12/views/home_screen.dart';
import 'package:flutter/material.dart';

class Ex12App extends StatelessWidget {
  const Ex12App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 12 - App Dat Xe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
