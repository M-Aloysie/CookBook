import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/spagheti.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('SpaghettiMincedMeatScreen - App Bar Title',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that the app bar title is correct
    expect(find.text('Spaghetti with Minced Meat Recipe Details'), findsOneWidget);
  });

  testWidgets('SpaghettiMincedMeatScreen - Recipe Image',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that the recipe image is displayed
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('SpaghettiMincedMeatScreen - Ingredients Section',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that the ingredients section is present
    expect(find.text('Ingredients:'), findsOneWidget);
  });

  testWidgets('SpaghettiMincedMeatScreen - Recipe Title',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that the recipe title is displayed
    expect(find.text('Spaghetti with Minced Meat Recipe'), findsOneWidget);
  });

  testWidgets('SpaghettiMincedMeatScreen - Instructions Section',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that the instructions section is present
    expect(find.text('Instructions:'), findsOneWidget);
  });

  testWidgets('SpaghettiMincedMeatScreen - Ingredients Detail',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that the detailed ingredients are displayed
    
    // Add similar expectations for other ingredients
});

testWidgets('SpaghettiMincedMeatScreen - Instructions Detail',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that the detailed instructions are displayed
    // 
});

testWidgets('SpaghettiMincedMeatScreen - Serving Suggestion',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that serving suggestion is displayed
    
});

testWidgets('SpaghettiMincedMeatScreen - Ingredient Image',
      (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: SpaghettiMincedMeatScreen()));

    // Verify that ingredient image is displayed
    
});

}
