import 'package:finty/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class IncomeExpense extends StatefulWidget {
  const IncomeExpense({Key? key}) : super(key: key);

  @override
  IncomeExpenseState createState() => IncomeExpenseState();
}

class IncomeExpenseState extends State<IncomeExpense> {
  int _selectedIndex = 0;

  void goHome() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  late final List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      backgroundColor: Color(0xff2c2c2c),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: TextButton(
                    onPressed: goHome,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Text(
                      "Income",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
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
    ),
    Scaffold(
      backgroundColor: Color(0xff2c2c2c),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: TextButton(
                    onPressed: goHome,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Text(
                      "Expenses",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
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
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff253110),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            backgroundColor: Colors.grey,
            label: 'Income',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off_rounded),
            backgroundColor: Colors.grey,
            label: 'Expenses',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
