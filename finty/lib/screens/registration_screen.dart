import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x2c2c2c),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Text(
            "Create an Account",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 64, left: 32, right: 32),
          child: TextField(
            controller: usernameController,
            style: TextStyle(color: Colors.white),
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
            controller: emailController,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.white),
                borderRadius:
                    BorderRadius.all(Radius.circular(50.0)), //<-- SEE HERE
              ),
              hintText: 'Email',
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
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 32, right: 32),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: phoneController,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.white),
                borderRadius:
                    BorderRadius.all(Radius.circular(50.0)), //<-- SEE HERE
              ),
              hintText: 'Phone',
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
            ),
          ),
        ),
        const Center(
          child: ElevatedButton(
            onPressed: null,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: 100,
                child: ColoredBox(
                  color: Colors.grey,
                  child: Center(
                    child: Text("Register"),
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
