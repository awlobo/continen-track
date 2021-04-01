import 'package:flutter_test/flutter_test.dart';

import 'package:continentracker/main.dart';

void main() {
  testWidgets('Title is correct', (WidgetTester tester) async {
    await tester.pumpWidget(ContinenTrackerApp());
    await tester.pumpAndSettle();
    expect(find.text('Continen-Tracker'), findsOneWidget);
    expect(find.text('ContinenTracker'), findsNothing);
  });
}
