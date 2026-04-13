import 'package:btc7/ex07/models/order_info.dart';
import 'package:btc7/ex07/utils/app_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const OrderInfo orderInfo = OrderInfo(id: 101, customerName: 'Alice');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Ex07 Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Gui nhieu tham so qua Named Route de xem thong tin don hang.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Don hang mau: #${orderInfo.id} cho ${orderInfo.customerName}',
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppConstants.orderRoute,
                  arguments: orderInfo,
                );
              },
              child: const Text('View Order'),
            ),
          ],
        ),
      ),
    );
  }
}
