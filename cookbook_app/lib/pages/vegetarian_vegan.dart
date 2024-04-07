import 'package:flutter/material.dart';

class VegetarianVeganScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vegetarian & Vegan'),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSectionTitle('Welcome to the Vegetarian & Vegan World'),
            _buildImageWithCaption(
              imagePath: 'assets/images/vegetarian.jpg',
              caption: 'Discover the Delicious World of Plant-Based Eating',
            ),
            _buildAdviceSection(),
            _buildRecipeSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.green[200],
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildImageWithCaption({required String imagePath, required String caption}) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            caption,
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAdviceSection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.green[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Advice for Vegetarians & Vegans:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          _buildAdviceItem('Ensure a balanced diet with a variety of plant-based foods.'),
          _buildAdviceItem('Pay attention to essential nutrients like protein, iron, and vitamin B12.'),
          _buildAdviceItem('Experiment with different cooking methods and flavors.'),
          _buildAdviceItem('Support local farmers and choose organic, sustainable ingredients.'),
        ],
      ),
    );
  }

  Widget _buildAdviceItem(String advice) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              advice,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeSection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Recipes:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          _buildRecipeItem(
            name: 'Quinoa Salad with Roasted Vegetables',
            imagePath: 'assets/images/quinoa_salad.jpg',
            recipe: '''
              Quinoa Salad Recipe:
              - Ingredients: 1 cup quinoa, assorted vegetables, olive oil, salt, pepper, lemon juice, fresh herbs.
              - Instructions: Cook quinoa, roast vegetables, combine with quinoa, season with olive oil, salt, pepper, lemon juice, and herbs. Serve chilled.
            ''',
          ),
          _buildRecipeItem(
            name: 'Vegetarian Chili',
            imagePath: 'assets/images/vegetarian_chili.jpg',
            recipe: '''
              Vegetarian Chili Recipe:
              - Ingredients: Onion, bell peppers, garlic, diced tomatoes, kidney beans, black beans, vegetable broth, chili powder, cumin, salt, pepper.
              - Instructions: Sauté vegetables, add tomatoes, beans, broth, and spices. Simmer until flavors meld. Serve hot with optional toppings.
            ''',
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeItem({required String name, required String imagePath, required String recipe}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            recipe,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
