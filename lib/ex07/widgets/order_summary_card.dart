import 'package:btc7/ex07/models/order_info.dart';
import 'package:flutter/material.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({required this.orderInfo, super.key});

  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order #${orderInfo.id} for ${orderInfo.customerName}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            const Text('Trang thai: Dang xu ly'),
            const Text('Phuong thuc giao hang: Express'),
            const Text('Tong tien: 520.000 VND'),
          ],
        ),
      ),
    );
  }
}
