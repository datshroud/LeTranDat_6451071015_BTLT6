import 'package:btc7/ex07/models/order_info.dart';
import 'package:btc7/ex07/widgets/order_summary_card.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Object? args = ModalRoute.of(context)?.settings.arguments;
    final OrderInfo? orderInfo = args is OrderInfo ? args : null;

    return Scaffold(
      appBar: AppBar(title: const Text('Order Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: orderInfo == null
            ? const Center(child: Text('Khong nhan duoc thong tin don hang.'))
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OrderSummaryCard(orderInfo: orderInfo),
                  const SizedBox(height: 16),
                  OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Back'),
                  ),
                ],
              ),
      ),
    );
  }
}
