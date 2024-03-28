import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/beef_rice.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('BeefAndRiceSoupScreen - Recipe Title',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BeefAndRiceSoupScreen()));

    // Verify that the recipe title is displayed
    expect(find.text('Beef and Rice Soup Recipe'), findsOneWidget);
  });
  testWidgets('BeefAndRiceSoupScreen - Introductory Description',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BeefAndRiceSoupScreen()));

    // Verify that the introductory description is displayed
    expect(find.textContaining('This is a very traditional Uzbek soup'),
        findsOneWidget);
  });
  testWidgets('BeefAndRiceSoupScreen - Ingredients Section',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BeefAndRiceSoupScreen()));

    // Verify that the ingredients section is present
    expect(find.text('INGREDIENTS:'), findsOneWidget);
  });
  testWidgets('BeefAndRiceSoupScreen - Specific Ingredients',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BeefAndRiceSoupScreen()));

    // Verify that specific ingredients are displayed
    expect(find.textContaining('10 oz of beef'), findsOneWidget);
    expect(find.textContaining('1 cup short grain rice'), findsOneWidget);
    // Add more specific ingredients to test as needed
  });
  testWidgets('BeefAndRiceSoupScreen - Directions Section',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BeefAndRiceSoupScreen()));

    // Verify that the directions section is present
    expect(find.text('DIRECTION:'), findsOneWidget);
  });
  testWidgets('BeefAndRiceSoupScreen - Specific Directions',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: BeefAndRiceSoupScreen()));

    // Verify that specific directions are displayed
    expect(
        find.textContaining('You will need to cut all the vegetables and meat'),
        findsOneWidget);
    // Add more specific directions to test as needed
  });
}
