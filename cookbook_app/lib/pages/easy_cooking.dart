import 'package:flutter/material.dart';

class EasyCookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Cooking'),
        backgroundColor: Colors.green[400], // Change the app bar color
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'assets/images/cooking.jpg', // Path to the main image
                    height: 200.0,
                    width: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Welcome to Easy Cooking!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700], // Change the text color
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'Learn simple and easy cooking techniques.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[700], // Change the text color
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Easy Cooking Techniques',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.green[700], // Change the text color
              ),
            ),
            SizedBox(height: 10.0),
            _buildTechniqueRecipe(
              imagePath: 'assets/images/eggs.jpg',
              caption: 'Boiling',
              recipe: '''
                Boiling is a simple cooking technique that involves heating water or other liquids to a high temperature until bubbles form and food is submerged and cooked. Here's a basic recipe for boiled eggs:
                
                Ingredients:
                - Eggs
                - Water
                
                Instructions:
                1. Place eggs in a saucepan and cover with cold water.
                2. Bring water to a boil over medium-high heat.
                3. Once boiling, remove the saucepan from heat, cover, and let stand for 8-10 minutes.
                4. Drain the eggs and transfer them to a bowl of ice water to cool.
                5. Peel and enjoy your perfectly boiled eggs!
              ''',
            ),
            _buildTechniqueRecipe(
              imagePath: 'assets/images/sauteing.jpg',
              caption: 'Sauteing',
              recipe: '''
                Sauteing is a cooking technique that involves frying food quickly in a small amount of oil or fat over high heat. Here's a simple recipe for sauteed vegetables:

                Ingredients:
                - Assorted vegetables (e.g., bell peppers, onions, zucchini)
                - Olive oil
                - Salt and pepper to taste

                Instructions:
                1. Heat olive oil in a skillet over medium-high heat.
                2. Add chopped vegetables to the skillet and season with salt and pepper.
                3. Cook, stirring frequently, until vegetables are tender and lightly browned, about 5-7 minutes.
                4. Serve hot as a side dish or over rice or pasta.
              ''',
            ),
            // Add recipes for other cooking techniques here
          ],
        ),
      ),
    );
  }

  Widget _buildTechniqueRecipe({
    required String imagePath,
    required String caption,
    required String recipe,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              caption,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          recipe,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
