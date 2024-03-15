import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cookbook_app/pages/user_specific_screen.dart';
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookbook_app/pages/sign_up.dart';
import 'package:cookbook_app/pages/interest.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
    );
  }
}
>>>>>>> 3355d6728cea7faecf52fbb402dabbe630990848

class SignInPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance; // new
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(); // to initialize Google sign-in

  // for signing in with google
  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser =
          await _googleSignIn.signIn(); // Use _googleSignIn
      if (googleUser == null) {
        return; // User canceled the sign-in
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => InterestScreen()),
      );
    } catch (e) {
      print('Error signing in with Google: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error signing in with Google')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello, Welcome Back!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(
          255,
          25,
          137,
          64,
        ), // Set the background color of the AppBar
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _signIn(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text('Sign In'),
            ),
<<<<<<< HEAD
=======
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
              ),
              child: Text(
                "Don't have an account? Sign Up",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                // Handlling sign-in with Google logic
                await _signInWithGoogle(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Sign In with Google'),
            ),
>>>>>>> 3355d6728cea7faecf52fbb402dabbe630990848
          ],
        ),
      ),
    );
  }

  void _signIn(BuildContext context) async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        User? user = userCredential.user;

        if (user != null) {
          // User signed in successfully, navigate to user-specific screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => UserSpecificScreen(user.uid)),
          );
        }
      } catch (e) {
        print('Sign-in failed: $e');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sign-in failed')));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please fill in all fields')));
    }
  }
}
