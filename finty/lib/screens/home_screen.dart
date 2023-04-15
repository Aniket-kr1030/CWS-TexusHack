import 'dart:ffi';
import 'dart:math';

import 'package:finty/screens/credit_card_screen.dart';
import 'package:finty/screens/income_expense.dart';
import 'package:finty/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void goProfile() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  void goCredit() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const CreditCardScreen()));
  }

  void goExpense() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const IncomeExpense()));
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  late final List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      backgroundColor: const Color(0xff2c2c2c),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(children: [
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Hello User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 200,
              ),
              SizedBox(
                height: 50,
                width: 60,
                child: TextButton(
                    onPressed: goProfile,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
              )
            ]),
            const Text(
              "Dash Board",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: goCredit,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff828282),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 40, right: 40),
                      child: Container(
                        width: 400,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Color(0xff404040),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        child: const Padding(
                          padding:
                              EdgeInsets.only(top: 40, left: 40, right: 40),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 600,
                      decoration: BoxDecoration(
                        color: Color(0xff333333),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  TextButton(
                    onPressed: goExpense,
                    child: Container(
                      width: 170,
                      height: 124,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Color(0xff404040),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          width: 141,
                          height: 58,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              color: Color(0xff404040),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 141,
                          height: 58,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              color: Color(0xff404040),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color(0xff404040),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Color(0x2c2c2c),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              children: <Widget>[
                const Padding(
                  padding:
                      EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 16),
                  child: Text(
                    "Budgets & Goals",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 230,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff404040),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "Create Budget",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 230,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff404040),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: TextButton(
                    onPressed: null,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "Create Expense",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 230,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff404040),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Scaffold(
      backgroundColor: Color(0x2c2c2c),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 16),
            child: Text(
              "Your accounts",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "You don't have any accounts linked to finity yet",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 180,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff404040),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 180,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff404040),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Scaffold(
      backgroundColor: Color(0x2c2c2c),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 16),
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Center(
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 120,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                  right: 40,
                ),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 180,
                        child: Padding(
                          padding: EdgeInsets.only(left: 45, bottom: 10),
                          child: Text(
                            "Push Notifications",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Icon(
                          Icons.toggle_on,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 40, top: 20, bottom: 10),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.fingerprint,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 180,
                        child: Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Text(
                            "Touch ID Lock",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Icon(
                          Icons.toggle_on,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 40, top: 20, bottom: 20),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.key,
                        color: Colors.white,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          "Change Passcode",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 40, top: 20, bottom: 20),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.help,
                        color: Colors.white,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          "Help & Support",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 40, top: 20, bottom: 20),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          "About Finty",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 40, top: 20, bottom: 20),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          "About Finty",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 40, top: 20, bottom: 20),
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
        ),
      ]),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c2c2c),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff253110),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            backgroundColor: Color(0xff2c2c2c),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            backgroundColor: Color(0xff2c2c2c),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            backgroundColor: Color(0xff2c2c2c),
            label: 'Bank',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            backgroundColor: Color(0xff2c2c2c),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
