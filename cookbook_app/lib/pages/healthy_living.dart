import 'package:flutter/material.dart';

class HealthyLivingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthy Living'),
        backgroundColor: Colors.green[400], // Change app bar color
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/live-healthy.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Achieve a Healthier Lifestyle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to the Healthy Living page. Here, you will find tips, resources, and inspiration to lead a healthier lifestyle.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800], // Change text color
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildTipItem(
              imagePath: 'assets/images/balanced-diet.jpg',
              caption: 'Eat a Balanced Diet',
              tip: '''
                A balanced diet rich in fruits, vegetables, whole grains, and lean proteins is essential for maintaining good health. Here's a simple recipe for a nutritious smoothie:

                Ingredients:
                - 1 banana
                - 1 cup spinach
                - 1/2 cup frozen berries
                - 1/2 cup Greek yogurt
                - 1/2 cup almond milk
                - 1 tablespoon honey (optional)

                Instructions:
                1. Combine all ingredients in a blender.
                2. Blend until smooth and creamy.
                3. Pour into a glass and enjoy immediately.
              ''',
            ),
            _buildTipItem(
              imagePath: 'assets/images/water.jpg',
              caption: 'Stay Hydrated',
              tip: '''
                Staying hydrated by drinking plenty of water throughout the day is essential for overall health and well-being. Here's a simple recipe for a refreshing infused water:

                Ingredients:
                - 1 lemon, sliced
                - 1 cucumber, sliced
                - Handful of mint leaves
                - 8 cups water

                Instructions:
                1. Combine lemon slices, cucumber slices, and mint leaves in a pitcher.
                2. Add water and stir well.
                3. Refrigerate for at least 1 hour to allow flavors to infuse.
                4. Serve chilled over ice.
              ''',
            ),
            _buildTipItem(
              imagePath: 'assets/images/exercise.jpg',
              caption: 'Exercise Regularly',
              tip: '''
                Regular exercise is crucial for maintaining a healthy weight, improving cardiovascular health, and boosting mood. Here's a simple home workout routine:

                Warm-Up:
                - 5 minutes of jogging in place
                - 10 arm circles (forward and backward)

                Workout:
                - 10 push-ups
                - 15 bodyweight squats
                - 20 bicycle crunches
                - 15 lunges (each leg)
                - 10 tricep dips (using a chair)

                Cool Down:
                - 5 minutes of stretching exercises
              ''',
            ),
            _buildTipItem(
              imagePath: 'assets/images/sleep.jpg',
              caption: 'Get Enough Sleep',
              tip: '''
                Getting enough quality sleep each night is essential for physical and mental well-being. Here are some tips for better sleep:

                - Stick to a regular sleep schedule
                - Create a relaxing bedtime routine
                - Make your bedroom conducive to sleep (comfortable mattress, cool temperature, dark environment)
                - Limit exposure to screens before bedtime
                - Avoid caffeine and heavy meals close to bedtime
              ''',
            ),
            _buildTipItem(
              imagePath: 'assets/images/no-stress.jpg',
              caption: 'Manage Stress',
              tip: '''
                Managing stress is crucial for overall health and well-being. Here are some relaxation techniques to try:

                - Deep breathing exercises
                - Meditation and mindfulness
                - Yoga or tai chi
                - Spending time in nature
                - Engaging in hobbies or activities you enjoy
              ''',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTipItem(
      {required String imagePath,
      required String caption,
      required String tip}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
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
                caption,
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
            tip,
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
