import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/spagheti.dart';

void main() {
  testWidgets('SpaghettiMincedMeatScreen Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: SpaghettiMincedMeatScreen(),
    ));

    // Verify that the title is rendered
    expect(find.text('Spaghetti with Minced Meat Recipe'), findsOneWidget);

    // Verify that the image is rendered
    expect(find.byType(Image), findsOneWidget);

    // Verify that the ingredients are displayed
    expect(find.text('Ingredients:'), findsOneWidget);
    expect(find.text('- 250g spaghetti'), findsOneWidget);
    expect(find.text('- 250g minced meat (beef or pork)'), findsOneWidget);
    // Add more ingredient texts as needed

    // Verify that the instructions are displayed
    expect(find.text('Instructions:'), findsOneWidget);
    expect(find.text('1. Cook the spaghetti according to the package instructions until al dente. Drain and set aside.'), findsOneWidget);
    expect(find.text('2. In a large skillet, heat some oil over medium heat. Add the chopped onion and minced garlic, and sauté until softened and fragrant.'), findsOneWidget);
    // Add more instruction texts as needed
  });
}
