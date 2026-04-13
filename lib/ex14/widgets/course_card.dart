import 'package:btc7/ex14/models/course.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({required this.course, required this.onTap, super.key});

  final Course course;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 6),
              Text('Giang vien: ${course.instructor}'),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.swipe, size: 18),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text('Mo chi tiet bang Named Route va PageView.'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
