import 'package:flutter_test/flutter_test.dart';

import 'package:continentracker/main.dart';

void main() {
  testWidgets('Title is correct', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ContinenTrackerApp());

    // Verify that our counter starts at 0.
    expect(find.text('Continen-Tracker'), findsOneWidget);
    expect(find.text('ContinenTracker'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
