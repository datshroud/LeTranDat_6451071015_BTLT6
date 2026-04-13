import 'package:btc7/ex08/utils/app_constants.dart';
import 'package:flutter/material.dart';

class DeletePreviewCard extends StatelessWidget {
  const DeletePreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              AppConstants.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text('Muc sap xoa: Temporary report'),
            SizedBox(height: 4),
            Text('Nut Delete mo ConfirmScreen va tra ket qua ve Home.'),
          ],
        ),
      ),
    );
  }
}
