import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  final String username;
  const UserProfileScreen(this.username);

  @override
  UserProfileScreenState createState() => UserProfileScreenState();
}

class UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: const [
            SizedBox(
              height: 100,
            ),
            Text("Profile"),
          ],
        ));
  }
}
