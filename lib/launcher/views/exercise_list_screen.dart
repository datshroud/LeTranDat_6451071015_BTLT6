import 'package:btc7/ex03/apps/ex03_app.dart';
import 'package:btc7/ex07/apps/ex07_app.dart';
import 'package:btc7/ex08/apps/ex08_app.dart';
import 'package:btc7/ex12/apps/ex12_app.dart';
import 'package:btc7/ex14/apps/ex14_app.dart';
import 'package:btc7/launcher/models/exercise_module.dart';
import 'package:btc7/launcher/utils/app_constants.dart';
import 'package:btc7/launcher/widgets/exercise_card.dart';
import 'package:flutter/material.dart';

class ExerciseListScreen extends StatelessWidget {
  const ExerciseListScreen({super.key});

  List<ExerciseModule> _modules() {
    return <ExerciseModule>[
      ExerciseModule(
        tag: 'Bai 3',
        title: 'Settings Screen',
        description: 'Navigation khong dung Named Routes.',
        color: Colors.teal,
        builder: (_) => const Ex03App(),
      ),
      ExerciseModule(
        tag: 'Bai 7',
        title: 'Order Screen',
        description: 'Passing multiple arguments voi Named Routes.',
        color: Colors.deepOrange,
        builder: (_) => const Ex07App(),
      ),
      ExerciseModule(
        tag: 'Bai 8',
        title: 'Confirm Screen',
        description: 'Tra ket qua true/false ve man hinh truoc.',
        color: Colors.redAccent,
        builder: (_) => const Ex08App(),
      ),
      ExerciseModule(
        tag: 'Bai 12',
        title: 'App Dat Xe',
        description: 'Bottom navigation, page view va trip detail.',
        color: Colors.green,
        builder: (_) => const Ex12App(),
      ),
      ExerciseModule(
        tag: 'Bai 14',
        title: 'App Hoc Online',
        description: 'TabBar, PageView va Named Routes.',
        color: Colors.blue,
        builder: (_) => const Ex14App(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final List<ExerciseModule> modules = _modules();

    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.appTitle)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    AppConstants.appSubtitle,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Moi bai duoc tach rieng trong lib theo cac nhom apps, models, views, utils va widgets.',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          for (final ExerciseModule module in modules)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ExerciseCard(
                module: module,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(builder: module.builder),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
