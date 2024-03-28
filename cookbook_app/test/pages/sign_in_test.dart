import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/sign_in.dart';
import 'package:cookbook_app/pages/sign_up.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase core
import 'package:flutter/material.dart';

void main() {
  setUpAll(() async {
    // Initialize Firebase before running any tests
    await Firebase.initializeApp();
  });
  testWidgets('Input validation', (tester) async {
    await tester.pumpWidget(MaterialApp(home: SignInPage()));

    // Fill in the fields with invalid data
    await tester.enterText(find.byKey(Key('name_field')), '');
    await tester.enterText(find.byKey(Key('email_field')), 'invalid email');
    await tester.enterText(find.byKey(Key('password_field')), '');

    // Tap the sign-in button
    await tester.tap(find.byKey(Key('sign_in_button')));
    await tester.pump();

    // Verify that the appropriate error message is shown
    expect(find.text('Please fill in all fields'), findsOneWidget);
  });
  testWidgets('Navigation to sign-up page', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SignInPage()));

    // Tap the "Don't have an account? Sign Up" button
    await tester.tap(find.text("Don't have an account? Sign Up"));
    await tester.pumpAndSettle();

    // Verify that the sign-up page is pushed onto the navigator stack
    expect(find.byType(SignUpPage), findsOneWidget);
  });
}
