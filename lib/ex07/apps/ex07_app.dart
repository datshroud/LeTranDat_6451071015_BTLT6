import 'package:btc7/ex07/utils/app_constants.dart';
import 'package:btc7/ex07/views/home_screen.dart';
import 'package:btc7/ex07/views/order_screen.dart';
import 'package:flutter/material.dart';

class Ex07App extends StatelessWidget {
  const Ex07App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 7 - Order Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        AppConstants.homeRoute: (_) => const HomeScreen(),
        AppConstants.orderRoute: (_) => const OrderScreen(),
      },
    );
  }
}
