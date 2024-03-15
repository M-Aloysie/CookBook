// main.dart

import 'package:flutter/material.dart';
import 'package:cookbook_app/pages/home.dart';
import 'package:cookbook_app/pages/sign_in.dart';
import 'package:cookbook_app/pages/sign_up.dart';
import 'package:cookbook_app/pages/interest.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

// Firebase.initializeApp();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
//  class _MyAppState extends State<MyApp> {
//    final future <firebaseApp>  _fapp = FirebaseApp.initializeApp();
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        home : HomeScreen(),
//      )
//    }
//  }

// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Firebase.initializeApp();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: Colors.red,
//           accentColor: Colors.green,
//           brightness: Brightness.light,
//         ),
//         useMaterial3: true,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
//         '/signin': (context) => SignInPage(),
//         '/signup': (context) => SignUpPage(),
//         '/recipeform': (context) => RecipeFormPage(),
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.secondary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Welcome to Fridge Fixer!',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20), // Adding some space
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FridgeScannerPage()),
//                 );
//               },
//               child: Text('Scan Fridge'),
//             ),
//             SizedBox(height: 20), // Adding more space
//           ],
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Theme.of(context).primaryColor,
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               title: Text('Fridge Scanner'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FridgeScannerPage()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Sign In'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/signin');
//               },
//             ),
//             ListTile(
//               title: Text('Sign Up'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/signup');
//               },
//             ),
//             ListTile(
//               title: Text('Recipe'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/recipeform');
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class SignInPage extends StatelessWidget {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _signIn(context);
//               },
//               child: Text('Sign In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _signIn(BuildContext context) {
//     String name = _nameController.text.trim();
//     String email = _emailController.text.trim();
//     String password = _passwordController.text.trim();

//     if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
//       // Proceed with sign-in logic
//     } else {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Please fill in all fields')));
//     }
//   }
// }

// class SignUpPage extends StatelessWidget {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Create Password',
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _confirmPasswordController,
//               decoration: InputDecoration(
//                 labelText: 'Confirm Password',
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _signUp(context);
//               },
//               child: Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _signUp(BuildContext context) {
//     String name = _nameController.text.trim();
//     String email = _emailController.text.trim();
//     String password = _passwordController.text.trim();
//     String confirmPassword = _confirmPasswordController.text.trim();

//     if (name.isNotEmpty &&
//         email.isNotEmpty &&
//         password.isNotEmpty &&
//         confirmPassword.isNotEmpty) {
//       if (password == confirmPassword) {
//         // Proceed with sign-up logic
//       } else {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text('Passwords do not match')));
//       }
//     } else {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Please fill in all fields')));
//     }
//   }
// }

// class FridgeScannerPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fridge Scanner'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'Choose Your Current Food in the Fridge Photos',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement file chooser logic
//               },
//               child: Text('Choose Files'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Let Us Help You Cook the Best Food Ever, Offering You Different Recipes!',
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RecipeFormPage extends StatelessWidget {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _ingredientsController = TextEditingController();
//   final TextEditingController _instructionsController = TextEditingController();
//   final TextEditingController _cautionsController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Recipe'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Recipe Name',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _ingredientsController,
//               decoration: InputDecoration(
//                 labelText: 'Ingredients',
//               ),
//               maxLines: 4,
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _instructionsController,
//               decoration: InputDecoration(
//                 labelText: 'Instructions',
//               ),
//               maxLines: 4,
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _cautionsController,
//               decoration: InputDecoration(
//                 labelText: 'Cautions',
//               ),
//               maxLines: 4,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _addRecipe(context); // Pass context here
//               },
//               child: Text('Submit Recipe'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _addRecipe(BuildContext context) {
//     String name = _nameController.text.trim();
//     String ingredients = _ingredientsController.text.trim();
//     String instructions = _instructionsController.text.trim();
//     String cautions = _cautionsController.text.trim();

//     if (name.isNotEmpty &&
//         ingredients.isNotEmpty &&
//         instructions.isNotEmpty &&
//         cautions.isNotEmpty) {
//       Map<String, dynamic> recipeData = {
//         'name': name,
//         'ingredients': ingredients,
//         'instructions': instructions,
//         'cautions': cautions,
//       };

//       try {
//         FirebaseFirestore.instance.collection('Recipes').add(recipeData);
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text('Recipe added successfully')));
//         _nameController.clear();
//         _ingredientsController.clear();
//         _instructionsController.clear();
//         _cautionsController.clear();
//       } catch (e) {
//         print('Error adding recipe: $e');
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text('Failed to add recipe')));
//       }
//     } else {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Please fill in all fields')));
//     }
//   }
// }

