import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PotatoesWithMeatScreen(),
    );
  }
}

class PotatoesWithMeatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Potatoes with Meat'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe Image
            Image.asset(
              'assets/images/potatoes.jpg',
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            // Recipe Title
            Text(
              'Potatoes with Meat',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            // Ingredients
            Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1 pound ground meat (lamb or beef)\n'
              '1 onion, finely chopped\n'
              '2 cloves garlic, minced\n'
              '2 carrots, diced\n'
              '1 cup frozen peas\n'
              '2 tablespoons tomato paste\n'
              '1 cup beef or vegetable broth\n'
              '1 tablespoon Worcestershire sauce\n'
              'Salt and black pepper, to taste\n'
              '1-2 tablespoons oil for cooking',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            // Instructions
            Text(
              'Instructions:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Heat oil in a large skillet or frying pan over medium heat.\n'
              'Add chopped onions and garlic, and sauté until they become translucent.\n'
              'Add the ground meat and cook until browned, breaking it into small pieces as it cooks.\n'
              'Stir in the diced carrots, frozen peas, and tomato paste. Cook for a few minutes until the vegetables are slightly tender.\n'
              'Pour in the beef or vegetable broth and Worcestershire sauce. Simmer for about 10-15 minutes, allowing the mixture to thicken. Season with salt and pepper to taste.\n'
              'While the meat mixture is simmering, place the diced potatoes in a pot of cold, salted water. Bring to a boil and cook until the potatoes are tender.\n'
              'Drain the potatoes and return them to the pot. Mash the potatoes and mix in butter, milk, salt, and black pepper until you achieve a creamy consistency.\n'
              'Assembly:\n'
              'Preheat your oven to 400°F (200°C).\n'
              'Transfer the meat filling to an ovenproof dish and spread it evenly.\n'
              'Spoon the mashed potatoes on top of the meat filling. Use a fork to create decorative ridges on the surface.\n'
              'Place the dish in the preheated oven and bake for about 20-25 minutes, or until the mashed potatoes are golden brown on top.\n'
              'Remove from the oven and let it cool slightly before serving.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
