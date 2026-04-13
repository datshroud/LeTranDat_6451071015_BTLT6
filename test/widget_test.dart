// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:btc7/launcher/apps/btc7_app.dart';

void main() {
  testWidgets('launcher shows selected exercises', (WidgetTester tester) async {
    await tester.pumpWidget(const Btc7App());

    expect(find.text('Lê Trần Đạt - 6451071015'), findsOneWidget);
    expect(find.text('Bai 3'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Bai 14'), 300);
    await tester.pumpAndSettle();
    expect(find.text('Bai 14'), findsOneWidget);
  });
}
