import 'package:btc7/ex08/views/home_screen.dart';
import 'package:flutter/material.dart';

class Ex08App extends StatelessWidget {
  const Ex08App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 8 - Confirm Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
