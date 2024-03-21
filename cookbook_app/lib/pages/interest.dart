import 'package:cookbook_app/pages/recipes.dart';
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
  List<Map<String, dynamic>> interests = [
    {
      'title': 'Discover Recipes',
      'image': 'assets/images/recipes.png',
      'description': 'Explore a variety of delicious recipes.',
      'isSelected': false,
    },
    {
      'title': 'Easy Cooking',
      'image': 'assets/images/cooking.jpg',
      'description': 'Learn simple and easy cooking techniques.',
      'isSelected': false,
    },
    {
      'title': 'Good fat recipes',
      'image': 'assets/images/recipes.png',
      'description':
          'Explore a variety of delicious recipes. that contains good fat',
      'isSelected': false,
    },
    {
      'title': 'Healthy Living',
      'image': 'assets/images/cooking.jpg',
      'description': 'Inspire healthy living with healthy recipes.',
      'isSelected': false,
    },
    // Add more interests as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Interests'),
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the content vertically
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipesScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.yellow[700], // Yellowish-orange background color
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Checkbox(
            value: interests[index]['isSelected'],
            onChanged: (value) {
              setState(() {
                interests[index]['isSelected'] = value;
              });
            },
          ),
          SizedBox(width: 10.0),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(interests[index]['image']),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  interests[index]['title'],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(interests[index]['description']),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
