class Course {
  const Course({
    required this.title,
    required this.instructor,
    required this.overview,
    required this.lessons,
    required this.reviews,
  });

  final String title;
  final String instructor;
  final String overview;
  final List<String> lessons;
  final List<String> reviews;
}
