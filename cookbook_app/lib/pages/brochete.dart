import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BrocheteScreen(),
    );
  }
}

class BrocheteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brochete Recipe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/brochete.jpg', // Path to the image
                height: 200.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Brochete Recipe',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '1. Cut the tenderloin into 2 cm pieces. Season the meat with pepper and salt if necessary. Let it rest for 30 minutes outside the refrigerator.\n\n'
              '2. Chop the garlic as finely as possible. Mix the garlic with ⅓ of the oil and stir the oil into the meat. Thread the meat onto skewers.\n\n'
              '3. Heat the rest of the oil in a frying pan over high heat. Fry the skewers for 2-3 minutes until golden brown on all sides. Remove from the pan and let rest under aluminum foil. Leave the shortening in the pan.\n\n'
              '4. In the meantime, make stock from the hot water and the quarter stock cube. Reheat the frying pan with the shortening and melt the butter in it. Stir in the flour and let it cook for 2 minutes. Add the stock in dashes, stirring constantly, until a thickened sauce is formed. Mix in the peppercorns. Season with pepper and salt if necessary. Serve the tenderloin skewers with the sauce.',
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
