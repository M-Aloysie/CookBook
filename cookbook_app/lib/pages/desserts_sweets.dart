import 'package:flutter/material.dart';

class DessertsSweetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desserts & Sweets'),
        backgroundColor: Colors.pink[400], // Change app bar color
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildDessertItem(
              imagePath: 'assets/images/chocolate_cake.jpg',
              name: 'Chocolate Cake',
              recipe: '''
                Chocolate Cake Recipe:
                Ingredients:
                - 2 cups all-purpose flour
                - 2 cups sugar
                - 3/4 cup unsweetened cocoa powder
                - 2 teaspoons baking powder
                - 1 1/2 teaspoons baking soda
                - 1 teaspoon salt
                - 2 eggs
                - 1 cup milk
                - 1/2 cup vegetable oil
                - 2 teaspoons vanilla extract
                - 1 cup boiling water

                Instructions:
                1. Preheat oven to 350°F (175°C). Grease and flour two 9-inch round cake pans.
                2. In a large bowl, combine flour, sugar, cocoa, baking powder, baking soda, and salt.
                3. Add eggs, milk, oil, and vanilla. Beat on medium speed for 2 minutes.
                4. Stir in boiling water. The batter will be thin.
                5. Pour batter into prepared pans.
                6. Bake for 30 to 35 minutes or until a toothpick inserted into the center comes out clean.
                7. Cool in pans for 10 minutes. Then remove from pans and cool completely on wire racks.
                8. Frost with your favorite frosting and enjoy!
              ''',
            ),
            _buildDessertItem(
              imagePath: 'assets/images/desserts1.jpg',
              name: 'Fruit Tart',
              recipe: '''
                Fruit Tart Recipe:
                Ingredients:
                - 1 sheet pre-made puff pastry, thawed
                - 8 oz cream cheese, softened
                - 1/4 cup powdered sugar
                - 1 teaspoon vanilla extract
                - Assorted fresh fruit (e.g., strawberries, blueberries, kiwi, grapes)
                - 1/4 cup apricot preserves

                Instructions:
                1. Preheat oven to 400°F (200°C).
                2. Roll out puff pastry into a rectangle and place on a baking sheet lined with parchment paper.
                3. Prick the pastry with a fork all over.
                4. Bake for 15-20 minutes or until golden brown and puffed up.
                5. In a bowl, mix cream cheese, powdered sugar, and vanilla extract until smooth.
                6. Spread the cream cheese mixture evenly over the cooled pastry.
                7. Arrange sliced fruit on top of the cream cheese layer.
                8. In a small saucepan, heat apricot preserves over low heat until melted.
                9. Brush the melted preserves over the fruit.
                10. Chill in the refrigerator for at least 1 hour before serving.
                11. Slice and enjoy!
              ''',
            ),
            // Add more dessert items here
          ],
        ),
      ),
    );
  }

  Widget _buildDessertItem({required String imagePath, required String name, required String recipe}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
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
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            recipe,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}
