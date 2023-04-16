import 'dart:ffi';
import 'dart:math';

import 'package:finty/constant/constants.dart';
import 'package:finty/screens/credit_card_screen.dart';
import 'package:finty/screens/income_expense.dart';
import 'package:finty/screens/login_screen.dart';
import 'package:finty/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'budget_form.dart';
import 'expense_form.dart';

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

  void goLogin() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  void goCredit() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const CreditCardScreen()));
  }

  void goExpense() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const IncomeExpense()));
  }

  void goToBudget() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const BudgetForm()));
  }

  void goToExpense() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ExpenseForm()));
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
                  "Hello ${Constants.username}!",
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
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 40, left: 40, right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "VISA",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "****   ****   ****   8154",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 600,
                      decoration: BoxDecoration(
                        color: Color(0xff333333),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                        child: Text(
                          "Balance: Rs.${Constants.balance}",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
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
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text(
                            "Income:  Rs.${Constants.income}",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Expenses:  Rs.${Constants.expense}",
                          style: TextStyle(color: Colors.red),
                        ),
                      ]),
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
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0, left: 16),
                            child: Text(
                              "Youtube:  12 Apr",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
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
                          child: Center(
                            child: TextButton(
                                onPressed: goToBudget,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Budget",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                  ],
                                )),
                          ),
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
              child: Center(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Transactions",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "Netflix                                                         Rs.  -20",
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "Amazon                                                      Rs.  -40",
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "Maa                                                             Rs. +300",
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ),
                  ),
                ]),
              ),
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
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 170,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff404040),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text(
                            "Budgets",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "How much can I spend to meet my budget?",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 50,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    "Grocery",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 10,
                                        width: 80,
                                        child: ColoredBox(color: Colors.red)),
                                    SizedBox(
                                        height: 10,
                                        width: 120,
                                        child: ColoredBox(color: Colors.green)),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      "800/2000",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: TextButton(
                    onPressed: goToBudget,
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
                    height: 170,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff404040),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text(
                            "Goals",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "How much I saved for my goals?",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 50,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    "Headphones",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 10,
                                        width: 130,
                                        child: ColoredBox(color: Colors.green)),
                                    SizedBox(
                                        height: 10,
                                        width: 70,
                                        child: ColoredBox(color: Colors.red)),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      "800/2000",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: TextButton(
                    onPressed: goToExpense,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "Create Goal",
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
                          color: Color(0xfffaa61a),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Personalized Advice",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 40,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Text(
                                "DailyBudget :                              20",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 400,
                            child: Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Save Rs. 20 Daily to buy headphones, 30 days earlier",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      )),
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
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "You don't have any accounts linked to Finty yet",
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Text(
                            "Add  Bank Account",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Connect your Bank Account.\nSync all your transactions to Wallet\nautomatically",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Text(
                            "Manual Input",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Update your account manually.\nYou can connect the bank later,\n if you wish.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
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
                child: TextButton(
                  onPressed: goLogin,
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
