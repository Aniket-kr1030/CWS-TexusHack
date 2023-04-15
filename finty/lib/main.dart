import 'package:finty/screens/credit_card_screen.dart';
import 'package:finty/screens/home_screen.dart';
import 'package:finty/screens/income_expense.dart';
import 'package:finty/screens/login_screen.dart';
import 'package:finty/screens/profile_screen.dart';
import 'package:finty/screens/registration_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Finty",
      themeMode: ThemeMode.light,
      home: LoginScreen(),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  WelcomeState createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  void goHome() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(onPressed: goHome, child: const Text("Get Started"))
      ]),
    );
  }
}
