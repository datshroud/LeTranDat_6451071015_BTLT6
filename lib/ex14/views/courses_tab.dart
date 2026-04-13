import 'package:btc7/ex14/utils/app_constants.dart';
import 'package:btc7/ex14/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CoursesTab extends StatelessWidget {
  const CoursesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: AppConstants.courses.length,
      itemBuilder: (BuildContext context, int index) {
        final course = AppConstants.courses[index];
        return CourseCard(
          course: course,
          onTap: () {
            Navigator.pushNamed(
              context,
              AppConstants.courseDetailRoute,
              arguments: course,
            );
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 12),
    );
  }
}
