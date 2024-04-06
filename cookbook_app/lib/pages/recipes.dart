import 'package:flutter/material.dart';
import 'package:cookbook_app/pages/potatoes.dart';
import 'package:cookbook_app/pages/brochete.dart';
import 'package:cookbook_app/pages/beef_rice.dart';
import 'package:cookbook_app/pages/spagheti.dart';
import 'package:cookbook_app/pages/easy_cooking.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipesScreen(),
    );
  }
}

class RecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover recipes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Discover recipes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Recipe Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  RecipeCard(
                    title: 'Potatoes with Meat',
                    imagePath: 'assets/images/potatoes.jpg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PotatoesWithMeatScreen(),
                        ),
                      );
                    },
                  ),
                  RecipeCard(
                    title: 'Brochette',
                    imagePath: 'assets/images/brochete.jpg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BrocheteScreen(),
                        ),
                      );
                    },
                  ),
                  RecipeCard(
                    title: 'Meat Soup with Rice',
                    imagePath: 'assets/images/rice_and_meat.jpg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BeefAndRiceSoupScreen(),
                        ),
                      );
                    },
                  ),
                  RecipeCard(
                    title: 'Spaghetti with Minced Meat',
                    imagePath: 'assets/images/spagheti.jpg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SpaghettiMincedMeatScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // Continue Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to other screen (to be implemented)
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow[700]!),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  RecipeCard(
      {required this.title, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Recipe Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(4.0)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 120.0,
              ),
            ),
            // Recipe Title
            Container(
              color: Colors.yellow[50],
              padding: EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeDetailsScreen extends StatelessWidget {
  final String title;
  final String imagePath;

  RecipeDetailsScreen({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    // Implement your recipe details screen here
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 200.0,
            ),
            SizedBox(height: 20.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add other recipe details as needed
          ],
        ),
      ),
    );
  }
}
