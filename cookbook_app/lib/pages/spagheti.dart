import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpaghettiMincedMeatScreen(),
    );
  }
}

class SpaghettiMincedMeatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spaghetti with Minced Meat Recipe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/spagheti.jpg', // Path to the image
                height: 200.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Spaghetti with Minced Meat Recipe',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- 250g spaghetti\n'
              '- 250g minced meat (beef or pork)\n'
              '- 1 onion, finely chopped\n'
              '- 2 cloves garlic, minced\n'
              '- 1 can (400g) crushed tomatoes\n'
              '- 2 tablespoons tomato paste\n'
              '- 1 teaspoon dried oregano\n'
              '- 1 teaspoon dried basil\n'
              '- Salt and pepper to taste\n'
              '- Grated Parmesan cheese for serving\n'
              '- Fresh basil leaves for garnish',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Instructions:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '1. Cook the spaghetti according to the package instructions until al dente. Drain and set aside.\n\n'
              '2. In a large skillet, heat some oil over medium heat. Add the chopped onion and minced garlic, and sauté until softened and fragrant.\n\n'
              '3. Add the minced meat to the skillet and cook until browned, breaking it apart with a spatula.\n\n'
              '4. Stir in the crushed tomatoes, tomato paste, dried oregano, and dried basil. Season with salt and pepper to taste.\n\n'
              '5. Let the sauce simmer for about 10-15 minutes, stirring occasionally, until it thickens.\n\n'
              '6. Add the cooked spaghetti to the skillet and toss until evenly coated with the sauce.\n\n'
              '7. Serve the spaghetti with minced meat hot, garnished with grated Parmesan cheese and fresh basil leaves.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
