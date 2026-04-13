import 'package:btc7/ex14/models/course.dart';

class AppConstants {
  const AppConstants._();

  static const String homeRoute = '/';
  static const String courseDetailRoute = '/course-detail';

  static const List<Course> courses = <Course>[
    Course(
      title: 'Flutter Can Ban',
      instructor: 'Thay Dung',
      overview: 'Hoc cach xay dung giao dien va dieu huong trong Flutter.',
      lessons: <String>[
        'Widget tree va StatelessWidget',
        'StatefulWidget va setState',
        'Navigation, routes va page lifecycle',
      ],
      reviews: <String>[
        'De theo doi, vi du ro rang.',
        'Noi dung thuc hanh sat bai tap.',
      ],
    ),
    Course(
      title: 'Dart for Mobile',
      instructor: 'Co Linh',
      overview: 'Tong hop cu phap Dart can dung khi lap trinh di dong.',
      lessons: <String>[
        'Variables, null safety',
        'Class, constructor va extension',
        'Async await voi Future',
      ],
      reviews: <String>['Phu hop de on tap nhanh.', 'Nhip bai giang gon gang.'],
    ),
    Course(
      title: 'UI Patterns',
      instructor: 'Thay Minh',
      overview: 'Tong hop Drawer, TabBar, BottomNavigationBar va PageView.',
      lessons: <String>[
        'Drawer cho app noi dung',
        'TabBar va TabBarView',
        'PageView cho onboarding',
      ],
      reviews: <String>[
        'Nhieu mau giao dien de ap dung.',
        'Phan bai tap rat sat de thi.',
      ],
    ),
  ];
}
