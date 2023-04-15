import 'package:finty/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (usernameController.text == "Aniket" &&
        passwordController.text == "iamdeath") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x2c2c2c),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 64, left: 32, right: 32),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: usernameController,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.white),
                borderRadius:
                    BorderRadius.all(Radius.circular(50.0)), //<-- SEE HERE
              ),
              hintText: 'Username',
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 32, right: 32),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.white),
                borderRadius:
                    BorderRadius.all(Radius.circular(50.0)), //<-- SEE HERE
              ),
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
            ),
          ),
        ),
        Center(
          child: TextButton(
            onPressed: login,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: 100,
                child: ColoredBox(
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
