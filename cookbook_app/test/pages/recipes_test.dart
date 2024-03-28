import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cookbook_app/pages/recipes.dart';

void main() {
  testWidgets('RecipeCard Widget Test', (WidgetTester tester) async {
    // Build the RecipeCard widget
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: RecipeCard(
          title: 'Test Recipe',
          imagePath: 'assets/images/potatoes.jpg',
          onTap: () {},
        ),
      ),
    ));

    // Verify that the title is rendered

  });

  testWidgets('RecipeCard Widget Test - Image Rendering', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/potatoes.jpg',
        onTap: () {},
      ),
    ),
  ));

  // Verify that the image is rendered
  expect(find.byType(Image), findsOneWidget);
});

testWidgets('RecipeCard Widget Test - onTap Callback Invocation', (WidgetTester tester) async {
  bool tapped = false;
  
  // Define the onTap callback function
  void onTapFunction() {
    tapped = true;
  }

  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/potatoes.jpg',
        onTap: onTapFunction,
      ),
    ),
  ));

  // Tap on the RecipeCard
  await tester.tap(find.byType(GestureDetector));
  await tester.pump();

  // Verify that the onTap callback is invoked
  expect(tapped, isTrue);
});

testWidgets('RecipeCard Widget Test - onTap Callback Invocation', (WidgetTester tester) async {
  bool tapped = false;
  
  // Define the onTap callback function
  void onTapFunction() {
    tapped = true;
  }

  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/potatoes.jpg',
        onTap: onTapFunction,
      ),
    ),
  ));

  // Tap on the RecipeCard
  await tester.tap(find.byType(GestureDetector));
  await tester.pump();

  // Verify that the onTap callback is invoked
  expect(tapped, isTrue);
});

testWidgets('RecipeCard Widget Test - Title Rendering', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/brochete.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify that the title is rendered
  expect(find.text('Test Recipe'), findsOneWidget);
});

testWidgets('RecipeCard Widget Test - Image Rendering', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/brochete.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify that the image is rendered
  expect(find.byType(Image), findsOneWidget);
});

testWidgets('RecipeCard Widget Test - onTap Callback Invocation', (WidgetTester tester) async {
  bool tapped = false;
  
  // Define the onTap callback function
  void onTapFunction() {
    tapped = true;
  }

  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/brochete.jpg', // Change image path here
        onTap: onTapFunction,
      ),
    ),
  ));

  // Tap on the RecipeCard
  await tester.tap(find.byType(GestureDetector));
  await tester.pump();

  // Verify that the onTap callback is invoked
  expect(tapped, isTrue);
});

testWidgets('RecipeCard Widget Test - Title Rendering', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/rice_and_meat.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify that the title is rendered
  expect(find.text('Test Recipe'), findsOneWidget);
});

testWidgets('RecipeCard Widget Test - Image Rendering', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/rice_and_meat.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify that the image is rendered
  expect(find.byType(Image), findsOneWidget);
});

testWidgets('RecipeCard Widget Test - onTap Callback Invocation', (WidgetTester tester) async {
  bool tapped = false;
  
  // Define the onTap callback function
  void onTapFunction() {
    tapped = true;
  }

  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/rice_and_meat.jpg', // Change image path here
        onTap: onTapFunction,
      ),
    ),
  ));

  // Tap on the RecipeCard
  await tester.tap(find.byType(GestureDetector));
  await tester.pump();

  // Verify that the onTap callback is invoked
  expect(tapped, isTrue);
});

testWidgets('RecipeCard Widget Test - Title Rendering', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/spagheti.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify that the title is rendered
  expect(find.text('Test Recipe'), findsOneWidget);
});

testWidgets('RecipeCard Widget Test - Image Rendering', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/spagheti.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify that the image is rendered
  expect(find.byType(Image), findsOneWidget);
});

testWidgets('RecipeCard Widget Test - onTap Callback Invocation', (WidgetTester tester) async {
  bool tapped = false;
  
  // Define the onTap callback function
  void onTapFunction() {
    tapped = true;
  }

  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/spagheti.jpg', // Change image path here
        onTap: onTapFunction,
      ),
    ),
  ));

  // Tap on the RecipeCard
  await tester.tap(find.byType(GestureDetector));
  await tester.pump();

  // Verify that the onTap callback is invoked
  expect(tapped, isTrue);
});

testWidgets('RecipeCard Widget Test - Layout and Styling', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/spagheti.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify the layout and styling of the RecipeCard widget
  expect(find.byType(Card), findsOneWidget); // Check if the widget is a Card
  expect(find.byType(Column), findsOneWidget); // Check if the widget uses a Column for layout
  expect(find.text('Test Recipe'), findsOneWidget); // Check if the title is rendered
  expect(find.byType(Image), findsOneWidget); // Check if the image is rendered
  // Add more layout and styling checks as needed
});

testWidgets('RecipeCard Widget Test - Interaction', (WidgetTester tester) async {
  // Build the RecipeCard widget
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Test Recipe',
        imagePath: 'assets/images/spagheti.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Tap on the RecipeCard
  await tester.tap(find.byType(GestureDetector));
  await tester.pump();

  // Verify that the card responds to taps as expected
  // Add additional verification if the widget should do something specific upon tap
});

testWidgets('RecipeCard Widget Test - Different Titles and Images', (WidgetTester tester) async {
  // Build the RecipeCard widget with different title and image
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: RecipeCard(
        title: 'Another Recipe',
        imagePath: 'assets/images/brochete.jpg', // Change image path here
        onTap: () {},
      ),
    ),
  ));

  // Verify that the different title and image are rendered correctly
  expect(find.text('Another Recipe'), findsOneWidget); // Change title verification as needed
  expect(find.byType(Image), findsOneWidget); // Change image verification as needed
  // Add more verifications if necessary
});



}
