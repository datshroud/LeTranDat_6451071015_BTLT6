import 'package:flutter/material.dart';

class ExerciseModule {
  const ExerciseModule({
    required this.tag,
    required this.title,
    required this.description,
    required this.color,
    required this.builder,
  });

  final String tag;
  final String title;
  final String description;
  final Color color;
  final WidgetBuilder builder;
}
