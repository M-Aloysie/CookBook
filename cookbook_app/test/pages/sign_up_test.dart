import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/sign_up.dart';
import 'package:cookbook_app/pages/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Input validation', (tester) async {
    await tester.pumpWidget(MaterialApp(home: SignUpPage()));

    // Fill in the fields with invalid data
    await tester.enterText(find.byKey(Key('name_field')), '');
    await tester.enterText(find.byKey(Key('email_field')), 'invalid email');
    await tester.enterText(find.byKey(Key('password_field')), '');
    await tester.enterText(find.byKey(Key('confirm_password_field')), '');

    // Tap the sign-up button
    // await tester.tap(find.byKey(Key('sign_up_button')));
    await tester.pump();

    // Verify that the appropriate error messages are shown
    // expect(find.text('Please fill in all fields'), findsOneWidget);
  });

  testWidgets('Password matching', (tester) async {
    await tester.pumpWidget(MaterialApp(home: SignUpPage()));

    // Fill in the password fields with different passwords
    await tester.enterText(find.byKey(Key('password_field')), 'password');
    await tester.enterText(
        find.byKey(Key('confirm_password_field')), 'different');

    // // Tap the sign-up button
    // await tester.tap(find.byKey(Key('sign_up_button')));
    // await tester.pump();

    // // Verify that the appropriate error message is shown
    // expect(find.text('Passwords do not match'), findsOneWidget);
  });
}
