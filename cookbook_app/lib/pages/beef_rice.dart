import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BeefAndRiceSoupScreen(),
    );
  }
}

class BeefAndRiceSoupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beef and Rice Soup Recipe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/rice_and_meat.jpg', // Path to the image
                height: 200.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Beef and Rice Soup',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(height: 20.0),
            Text(
              'This is a very traditional Uzbek soup which is warming and refreshing at the same time. Whenever I am tired from eating too much of the solid foods, I whip this beef and rice soup (also called “Mastava” in Uzbek) very easily. It doesn’t require much time and is a very good choice when you are under the weather. It is indeed a great comfort food! Mastava goes very easy on your stomach and tastes great with the addition of yogurt and fresh or dry herbs. My children eat it with delight.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Beef and Rice Soup Mastava (2)',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'As simple as this soup is to make, sometimes it can come out a little on a bland side. My grandmother who taught me how to cook this soup used to say that the key is in sautéing the ingredients correctly and giving enough time for the initial boiling, where the meat (preferably on the bone) releases its juices and gives a great taste to the soup. So, please watch out for all the details.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'INGREDIENTS:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '10 oz of beef\n'
              '1/2 cup oil (or ghee)\n'
              '1 medium onion\n'
              '1 large tomato, preferably skin peeled (or two medium)\n'
              '1/2 red bell pepper (I use a paste blend with hot chili peppers)\n'
              '1 medium carrot\n'
              '1 medium potato\n'
              '1 cup short grain rice, I use California Rose (sushi rice will work)\n'
              '1-1/2 liters of water\n'
              '1/4 tsp smoked paprika (optional)\n'
              '1/4 cumin powder (optional)\n'
              '1 Tbsp salt\n'
              'Black pepper (optional)\n'
              '1 tsp dried basil\n'
              '1/2 tsp dried mint\n'
              'Fresh herbs like dill or cilantro for garnish',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'DIRECTION:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'You will need to cut all the vegetables and meat about the same size. I cut them all in small cubes to have a very uniform soup. Onion on the other hand, the thinner the better. Prep all your cutting in advance, so that you do not get distracted while things are getting fried. You do not want to burn anything.',
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
