import 'package:btc7/ex14/utils/app_constants.dart';
import 'package:flutter/material.dart';

class MyLearningTab extends StatelessWidget {
  const MyLearningTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        for (final course in AppConstants.courses.take(2))
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.play_circle_outline),
                title: Text(course.title),
                subtitle: Text('Dang hoc voi ${course.instructor}'),
                trailing: const Text('70%'),
              ),
            ),
          ),
      ],
    );
  }
}
