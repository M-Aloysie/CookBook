import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/brochete.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('BrocheteScreen - Recipe Title', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BrocheteScreen()));

    // Verify that the recipe title is displayed
    expect(find.text('Brochete Recipe'), findsOneWidget);
  });
  testWidgets('BrocheteScreen - Instructions Section',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BrocheteScreen()));

    // Verify that the instructions section is present
    expect(find.textContaining('Cut the tenderloin into 2 cm pieces'),
        findsOneWidget);
  });
  testWidgets('BrocheteScreen - Specific Instruction Steps',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BrocheteScreen()));

    // Verify that specific steps are displayed
    expect(find.textContaining('Cut the tenderloin into 2 cm pieces'),
        findsOneWidget);
    expect(find.textContaining('Mix the garlic with ⅓ of the oil'),
        findsOneWidget);
    expect(
        find.textContaining('Fry the skewers for 2-3 minutes'), findsOneWidget);
    // Add more specific steps to test as needed
  });
}
