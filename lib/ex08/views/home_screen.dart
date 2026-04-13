import 'package:btc7/ex08/utils/app_constants.dart';
import 'package:btc7/ex08/views/confirm_screen.dart';
import 'package:btc7/ex08/widgets/delete_preview_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _lastDecision = 'Chua co thao tac.';

  Future<void> _deleteItem() async {
    final bool? result = await Navigator.push<bool>(
      context,
      MaterialPageRoute<bool>(
        builder: (_) => const ConfirmScreen(target: AppConstants.target),
      ),
    );

    final bool confirmed = result ?? false;
    final String message = confirmed
        ? 'Da xoa ${AppConstants.target.name}.'
        : 'Da huy thao tac xoa.';

    if (!mounted) {
      return;
    }

    setState(() {
      _lastDecision = message;
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Ex08 Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DeletePreviewCard(),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: _deleteItem,
              icon: const Icon(Icons.delete_outline),
              label: const Text('Delete Item'),
            ),
            const SizedBox(height: 16),
            Text(_lastDecision, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
