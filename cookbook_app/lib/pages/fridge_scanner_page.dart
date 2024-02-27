import 'package:flutter/material.dart';

class FridgeScannerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fridge Scanner'),
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fridge Scanner Page',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 20), // Adding some spacing
              ElevatedButton(
                onPressed: () {
                  // Add your button onPressed logic here
                },
                child: Text('Scan Fridge'),
              ),
              SizedBox(height: 20), // Adding more spacing
              Image.asset(
                'assets/images/fridge.png', // Replace with your image asset path
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
