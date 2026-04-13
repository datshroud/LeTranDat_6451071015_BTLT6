import 'package:btc7/ex14/utils/app_constants.dart';
import 'package:btc7/ex14/views/course_detail_screen.dart';
import 'package:btc7/ex14/views/home_screen.dart';
import 'package:flutter/material.dart';

class Ex14App extends StatelessWidget {
  const Ex14App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 14 - App Hoc Online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        AppConstants.homeRoute: (_) => const HomeScreen(),
        AppConstants.courseDetailRoute: (_) => const CourseDetailScreen(),
      },
    );
  }
}
