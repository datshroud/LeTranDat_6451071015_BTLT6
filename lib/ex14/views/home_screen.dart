import 'package:btc7/ex14/views/courses_tab.dart';
import 'package:btc7/ex14/views/my_learning_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('App Hoc Online'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Courses', icon: Icon(Icons.menu_book_outlined)),
              Tab(text: 'My Learning', icon: Icon(Icons.school_outlined)),
            ],
          ),
        ),
        body: const TabBarView(children: [CoursesTab(), MyLearningTab()]),
      ),
    );
  }
}
