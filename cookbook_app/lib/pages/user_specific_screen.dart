import 'package:flutter/material.dart';

class UserSpecificScreen extends StatelessWidget {
  final String userId;

  UserSpecificScreen(this.userId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Specific Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, User $userId!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            if (userId == 'admin')
              ElevatedButton(
                onPressed: () {
                  // Perform admin-specific action
                  // For example, navigate to admin dashboard
                  Navigator.pushNamed(context, '/admin_dashboard');
                },
                child: Text('Admin Dashboard'),
              ),
            if (userId != 'admin')
              ElevatedButton(
                onPressed: () {
                  // Perform regular user-specific action
                  // For example, view user profile
                  Navigator.pushNamed(context, '/user_profile');
                },
                child: Text('View Profile'),
              ),
          ],
        ),
      ),
    );
  }
}
