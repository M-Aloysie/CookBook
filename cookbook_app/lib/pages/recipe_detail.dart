import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      home: RecipeDetailScreen(),
    );
  }
}

class RecipeDetailScreen extends StatelessWidget {
  final List<String>? ingredients;

  const RecipeDetailScreen({Key? key, this.ingredients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Detail'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Ingredients'),
            subtitle: Text(ingredients != null
                ? ingredients!.join(", ")
                : "No ingredients provided"),
          ),
          // Other widgets related to recipe detail
        ],
      ),
    );
  }
}
