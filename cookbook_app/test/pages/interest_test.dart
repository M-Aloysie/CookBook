import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/interest.dart';
import 'package:flutter/material.dart';
import 'package:cookbook_app/pages/recipes.dart';

void main() {
  testWidgets('interest ...', (tester) async {
    // Build InterestScreen widget
    await tester.pumpWidget(MaterialApp(home: InterestScreen()));

    // Tap the first checkbox
    await tester.tap(find.byType(Checkbox).first);
    await tester.pump();

    // Verify that the first interest is selected
    expect(find.byType(Checkbox).first, findsOneWidget);
  });

  testWidgets('Navigation to RecipesScreen', (WidgetTester tester) async {
    // Build InterestScreen widget
    await tester.pumpWidget(MaterialApp(home: InterestScreen()));

    // Tap the "Continue" button
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // Verify that RecipesScreen is pushed onto the navigator stack
    expect(find.byType(RecipesScreen), findsOneWidget);
  });
}
