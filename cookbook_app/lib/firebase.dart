import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cookbook_app/pages/sign_in.dart'; // Assuming your sign_in.dart file is named 'sign_in.dart'
import 'package:cookbook_app/pages/home.dart'; // Import HomePage from home.dart or adjust as needed

void main() async {
  // Initialize Firebase for testing
  TestWidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  group('SignInPage Widget Tests', () {
    testWidgets('Testing Name TextField', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SignInPage(),
        ),
      );

      // Find the Name TextField
      expect(find.byKey(Key('name_text_field')), findsOneWidget);
    });

    testWidgets('Testing Email TextField', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SignInPage(),
        ),
      );

      // Find the Email TextField
      expect(find.byKey(Key('email_text_field')), findsOneWidget);
    });

    // Add more tests for other widgets and behaviors on SignInPage
  });

  group('HomePage Widget Tests', () {
    testWidgets('Testing AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          // home: MyHomePage(), // Assuming MyHomePage is defined in home.dart
        ),
      );

      // Find the AppBar widget
      expect(find.byType(AppBar), findsOneWidget);
    });

    // Add more tests for other widgets and behaviors on MyHomePage
  });

  // Add more groups for testing other pages in your app

  group('Method Tests', () {
    test('Example Method Test', () {
      // Write unit tests for methods if applicable
      // For example:
      expect(exampleMethod(5), 10); // Assuming exampleMethod doubles the input
    });

    // Add more method tests as needed
  });
}

// Example method for testing purposes
int exampleMethod(int value) {
  return value * 2;
}
