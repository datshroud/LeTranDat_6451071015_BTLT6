import 'package:btc7/launcher/views/exercise_list_screen.dart';
import 'package:flutter/material.dart';

class Btc7App extends StatelessWidget {
  const Btc7App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTC7 Exercises',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ExerciseListScreen(),
    );
  }
}
