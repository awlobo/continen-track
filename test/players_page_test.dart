import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:continentracker/main.dart';

void main() {
  group("Spin Box tests", () {
    final key = Key("spNumPlayers");

    testWidgets('Find Spin Box', (WidgetTester tester) async {
      await tester.pumpWidget(ContinenTrackerApp());
      expect(find.byKey(key), findsOneWidget);
    });

    testWidgets('Default values is 2', (WidgetTester tester) async {
      await tester.pumpWidget(ContinenTrackerApp());
      expect(find.text('2'), findsOneWidget);
      expect(find.text('0'), findsNothing);
    });
    testWidgets('Increment number', (WidgetTester tester) async {
      await tester.pumpWidget(ContinenTrackerApp());
      expect(find.byKey(key), findsOneWidget);
      await tester.tap(find.byIcon(Icons.keyboard_arrow_up));
      await tester.pump();
      expect(find.text('3'), findsOneWidget);
      expect(find.text('2'), findsNothing);
    });

    testWidgets('Decrement number', (WidgetTester tester) async {
      await tester.pumpWidget(ContinenTrackerApp());
      await tester.tap(find.byIcon(Icons.keyboard_arrow_up));
      await tester.pump();
      await tester.tap(find.byIcon(Icons.keyboard_arrow_up));
      await tester.pump();
      await tester.tap(find.byIcon(Icons.keyboard_arrow_down));
      await tester.pump();
      expect(find.text('3'), findsOneWidget);
      expect(find.text('2'), findsNothing);
      expect(find.text('4'), findsNothing);
    });
  });
}
