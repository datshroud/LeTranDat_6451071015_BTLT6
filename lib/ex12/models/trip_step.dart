import 'package:flutter/material.dart';

class TripStep {
  const TripStep({
    required this.title,
    required this.description,
    required this.actionLabel,
    required this.icon,
  });

  final String title;
  final String description;
  final String actionLabel;
  final IconData icon;
}
