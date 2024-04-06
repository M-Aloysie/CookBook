import 'package:flutter/material.dart';

class BakingBasicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baking Basics'),
        backgroundColor: Colors.brown[400], // Change app bar color
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildBakingItem(
              imagePath: 'assets/images/chocolate_chip_cookies.jpg',
              name: 'Chocolate Chip Cookies',
              recipe: '''
                Chocolate Chip Cookies Recipe:
                Ingredients:
                - 2 1/4 cups all-purpose flour
                - 1 teaspoon baking soda
                - 1/2 teaspoon salt
                - 1 cup unsalted butter, softened
                - 3/4 cup granulated sugar
                - 3/4 cup packed brown sugar
                - 1 teaspoon vanilla extract
                - 2 large eggs
                - 2 cups semi-sweet chocolate chips

                Instructions:
                1. Preheat oven to 375°F (190°C). Line a baking sheet with parchment paper.
                2. In a small bowl, combine flour, baking soda, and salt. Set aside.
                3. In a large mixing bowl, cream together softened butter, granulated sugar, brown sugar, and vanilla extract until creamy.
                4. Add eggs, one at a time, beating well after each addition.
                5. Gradually add the dry ingredients to the wet ingredients and mix until well combined.
                6. Stir in chocolate chips.
                7. Drop dough by rounded tablespoons onto the prepared baking sheet.
                8. Bake for 9-11 minutes or until golden brown.
                9. Allow cookies to cool on the baking sheet for 5 minutes, then transfer to wire racks to cool completely.
                10. Enjoy your delicious homemade chocolate chip cookies!
              ''',
            ),
            _buildBakingItem(
              imagePath: 'assets/images/banana_bread.jpg',
              name: 'Banana Bread',
              recipe: '''
                Banana Bread Recipe:
                Ingredients:
                - 2 cups all-purpose flour
                - 1 teaspoon baking soda
                - 1/4 teaspoon salt
                - 1/2 cup unsalted butter, softened
                - 3/4 cup granulated sugar
                - 2 large eggs
                - 2-3 ripe bananas, mashed
                - 1/4 cup milk
                - 1 teaspoon vanilla extract

                Instructions:
                1. Preheat oven to 350°F (175°C). Grease and flour a 9x5-inch loaf pan.
                2. In a medium bowl, whisk together flour, baking soda, and salt. Set aside.
                3. In a large mixing bowl, cream together softened butter and granulated sugar until light and fluffy.
                4. Add eggs, one at a time, beating well after each addition.
                5. Stir in mashed bananas, milk, and vanilla extract until well combined.
                6. Gradually add the dry ingredients to the wet ingredients and mix until just combined. Do not overmix.
                7. Pour batter into prepared loaf pan.
                8. Bake for 60-65 minutes or until a toothpick inserted into the center comes out clean.
                9. Allow banana bread to cool in the pan for 10 minutes, then transfer to a wire rack to cool completely.
                10. Slice and enjoy your moist and flavorful banana bread!
              ''',
            ),
            // Add more baking items here
          ],
        ),
      ),
    );
  }

  Widget _buildBakingItem({required String imagePath, required String name, required String recipe}) {
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
