import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String _baseUrl = 'https://api.spoonacular.com/recipes/';
  static const String _apiKey = '5b323aab333f4a26b5bf0e031faf911f';

  Future<List<dynamic>> fetchRecipesByIngredients(
      List<String> ingredients) async {
    final response = await http.get(
      Uri.parse(
          '$_baseUrl/findByIngredients?ingredients=${ingredients.join(",")}&apiKey=$_apiKey'),
    );

    if (response.statusCode == 200) {
      // Parse the JSON response
      dynamic jsonResponse = jsonDecode(response.body);

      // Check if the response is a list
      if (jsonResponse is List) {
        return jsonResponse; // Return the list if it's a valid response
      } else {
        throw Exception('Invalid API response: Expected a list');
      }
    } else {
      // If the server returns an error response, throw an exception
      throw Exception('Failed to fetch recipes');
    }
  }
}
