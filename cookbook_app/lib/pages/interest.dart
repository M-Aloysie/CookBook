import 'package:cookbook_app/pages/recipes.dart';
import 'package:cookbook_app/pages/easy_cooking.dart';
import 'package:cookbook_app/pages/healthy_living.dart'; 
import 'package:cookbook_app/pages/desserts_sweets.dart'; // Import the desserts_sweets.dart file
import 'package:cookbook_app/pages/vegetarian_vegan.dart'; // Import the vegetarian_vegan.dart file
import 'package:cookbook_app/pages/baking_basics.dart'; // Import the baking_basics.dart file
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InterestScreen(),
    );
  }
}

class InterestScreen extends StatefulWidget {
  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  int selectedIndex = -1; // Index of the selected interest, -1 means none selected

  List<Map<String, dynamic>> interests = [
    {
      'title': 'Discover Recipes',
      'image': 'assets/images/recipes.png',
      'description': 'Explore a variety of delicious recipes.',
      'page': RecipesScreen(),
    },
    {
      'title': 'Easy Cooking',
      'image': 'assets/images/cooking.jpg',
      'description': 'Learn simple and easy cooking techniques.',
      'page': EasyCookingScreen(),
    },
    {
      'title': 'Healthy Living',
      'image': 'assets/images/healthy_living.jpg',
      'description': 'Inspire healthy living with healthy recipes.',
      'page': HealthyLivingScreen(),
    },
    {
      'title': 'Desserts & Sweets',
      'image': 'assets/images/desserts_sweets.jpg',
      'description': 'Indulge in delicious dessert recipes and sweet treats.',
      'page': DessertsSweetsScreen(), // Add the page widget for Desserts & Sweets
    },
    {
      'title': 'Vegetarian & Vegan',
      'image': 'assets/images/vegetarian_vegan.jpg',
      'description': 'Explore plant-based recipes for vegetarians and vegans.',
      'page': VegetarianVeganScreen(), // Add the page widget for Vegetarian & Vegan
    },
    {
      'title': 'Baking Basics',
      'image': 'assets/images/baking_basics.jpg',
      'description': 'Learn essential baking techniques and recipes for beginners.',
      'page': BakingBasicsScreen(), // Add the page widget for Baking Basics
    },
    // Add more interests as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Interest'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: interests.length,
              itemBuilder: (context, index) {
                return buildInterestItem(index);
              },
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: selectedIndex == -1
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => interests[selectedIndex]['page'],
                        ),
                      );
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedIndex == -1 ? Colors.grey : Colors.yellow[700],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInterestItem(int index) {
    return ListTile(
      title: Text(
        interests[index]['title'],
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(interests[index]['description']),
      leading: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedIndex == index ? Colors.blue : Colors.transparent,
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
          child: selectedIndex == index
              ? Icon(
                  Icons.check,
                  size: 16.0,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
