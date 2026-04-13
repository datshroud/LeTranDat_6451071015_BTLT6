import 'package:btc7/ex12/models/trip_step.dart';
import 'package:flutter/material.dart';

class TripStepCard extends StatelessWidget {
  const TripStepCard({
    required this.step,
    required this.stepNumber,
    required this.totalSteps,
    required this.onAction,
    super.key,
  });

  final TripStep step;
  final int stepNumber;
  final int totalSteps;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 28, child: Icon(step.icon, size: 28)),
            const SizedBox(height: 20),
            Text(
              'Page $stepNumber/$totalSteps',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            Text(
              step.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            Text(step.description, textAlign: TextAlign.center),
            const SizedBox(height: 24),
            FilledButton(onPressed: onAction, child: Text(step.actionLabel)),
          ],
        ),
      ),
    );
  }
}
