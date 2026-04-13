import 'package:btc7/ex14/models/course.dart';
import 'package:btc7/ex14/widgets/detail_section_page.dart';
import 'package:flutter/material.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({super.key});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Object? args = ModalRoute.of(context)?.settings.arguments;
    final Course? course = args is Course ? args : null;

    if (course == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Course Detail')),
        body: const Center(child: Text('Khong tim thay khoa hoc.')),
      );
    }

    final List<String> sectionTitles = <String>[
      'Overview',
      'Lessons',
      'Reviews',
    ];

    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'Giang vien: ${course.instructor}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text('Swipe ngang de chuyen noi dung bai hoc.'),
                const SizedBox(height: 12),
                Chip(label: Text(sectionTitles[_currentPage])),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                DetailSectionPage(
                  title: 'Overview',
                  items: <String>[course.overview],
                ),
                DetailSectionPage(title: 'Lessons', items: course.lessons),
                DetailSectionPage(title: 'Reviews', items: course.reviews),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
