import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/potatoes.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('PotatoesWithMeatScreen - App Bar Title',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: PotatoesWithMeatScreen()));

    // Verify that the app bar title is correct
    expect(find.text('Potatoes with Meat'), findsOneWidget);
  });
  testWidgets('PotatoesWithMeatScreen - Recipe Image',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: PotatoesWithMeatScreen()));

    // Verify that the recipe image is displayed
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('PotatoesWithMeatScreen - Ingredients Section',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: PotatoesWithMeatScreen()));

    // Verify that the ingredients section is present
    expect(find.text('Ingredients:'), findsOneWidget);
  });
  testWidgets('PPotatoes with Meat, the delicious meal',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: PotatoesWithMeatScreen()));

    // Verify that the recipe title is displayed
    expect(find.text('Potatoes with Meat, the delicious meal'), findsOneWidget);
  });
  testWidgets('PotatoesWithMeatScreen - Instructions Section',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: PotatoesWithMeatScreen()));

    // Verify that the instructions section is present
    expect(find.text('Instructions:'), findsOneWidget);
  });
}
