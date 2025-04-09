import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pexa_test/screens/counter_screen.dart';

void main() {
  testWidgets('CounterScreen increments and decrements correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: CounterScreen(),
      ),
    );

    // Verify initial state is 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Cannot go below 0'), findsNothing);

    // Tap the + icon to increment
    await tester.tap(find.byIcon(Icons.add_circle));
    await tester.pumpAndSettle();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('Cannot go below 0'), findsNothing);

    // Tap the - icon to decrement
    await tester.tap(find.byIcon(Icons.remove_circle));
    await tester.pumpAndSettle();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('Cannot go below 0'), findsNothing);

    // Tap the - icon again to go below zero
    await tester.tap(find.byIcon(Icons.remove_circle));
    await tester.pumpAndSettle();

    // Should not go below zero and should show warning
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Cannot go below 0'), findsOneWidget);
  });
}
