import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  void backToHome() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c2c2c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 64),
            child: Row(
              children: [
                TextButton(
                  onPressed: backToHome,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff2c2c2c)),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Account Info",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 80,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Text(
                        "Name ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Text(
                      "username",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Text(
                        "Phone number",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Text(
                      "+91-XXXXXXXXXX",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Text(
                        "E-mail",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Text(
                      "xyz@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Text(
                        "DOB",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Text(
                      "DD/MM/YY",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Text(
                        "Gender",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Text(
                      "Male",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 60, right: 40, top: 200, bottom: 20),
            child: Center(
              child: Row(
                children: const [
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                    size: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
