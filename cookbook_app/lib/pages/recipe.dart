import 'package:flutter/material.dart';
import 'package:cookbook_app/spoonacular/api_services.dart';
import 'package:cookbook_app/pages/recipe_detail.dart'; // Import RecipeDetailScreen from recipe_detail.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      home: RecipeScreen(),
    );
  }
}

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  final TextEditingController _ingredientsController = TextEditingController();
  final ApiService _apiService = ApiService();
  List<dynamic> _recipes = [];

  void _fetchRecipes() async {
    String ingredients = _ingredientsController.text;
    List<String> ingredientsList =
        ingredients.split(',').map((e) => e.trim()).toList();
    try {
      List<dynamic> recipes =
          await _apiService.fetchRecipesByIngredients(ingredientsList);
      print('Fetched recipes: $recipes'); // Debugging: Print fetched recipes
      setState(() {
        _recipes = recipes;
      });
    } catch (e) {
      print(
          'Error fetching recipes: $e'); // Error Handling: Print error message
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _ingredientsController,
              decoration: InputDecoration(
                hintText: 'Enter ingredients (comma-separated)',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _fetchRecipes,
              child: Text('Search Recipes'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_recipes[index]['title'] ?? ''),
                    subtitle: Text(_recipes[index]['instructions'] ?? ''),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetailScreen(
                            ingredients: List<String>.from(_recipes[index]
                                ['missedIngredients']), // Pass ingredients list
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
