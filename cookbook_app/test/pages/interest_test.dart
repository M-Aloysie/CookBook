import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AppBar displays correct title', (WidgetTester tester) async {
    // Build the widget and trigger frame rendering
    // await tester.pumpWidget(MaterialApp(home: InterestScreen()));

    // Use the `find` function to search for widgets in the widget tree
    expect(find.text('Select Your Interests'), findsOneWidget);
  });

  testWidgets('Continue button navigates to RecipesScreen', (WidgetTester tester) async {
    // await tester.pumpWidget(MaterialApp(home: InterestScreen()));

    // Tap the continue button
    await tester.tap(find.text('Continue'));

    // Wait for the navigation to complete
    await tester.pumpAndSettle();

    // Verify that the RecipesScreen is displayed
    // expect(find.byType(RecipesScreen), findsOneWidget);
  });
}