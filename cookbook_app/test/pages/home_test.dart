import 'package:flutter_test/flutter_test.dart';
import 'package:cookbook_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('home ...', (tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Verify that the home screen renders correctly
    expect(find.text("CookBook\n\n\nLet's\nPrepare"), findsOneWidget);
    expect(find.text('together your Dream Meal'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
