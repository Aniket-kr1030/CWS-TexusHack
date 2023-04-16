import 'package:finty/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../constant/constants.dart';

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
                    child: Column(
                      children: [
                        Text(
                          "Income",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
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
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        "${Constants.it1}                                                        Rs.  ${-1 * Constants.t1}",
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "${Constants.it2}                                                  Rs.  ${-1 * Constants.t2} ",
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "${Constants.it3}                                                      Rs. ${Constants.t3}",
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
                    child: Column(
                      children: [
                        Text(
                          "Expenses",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
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
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        "${Constants.it1}                                                        Rs.  ${Constants.t1}",
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
                        "${Constants.it2}                                                  Rs.  ${Constants.t2} ",
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
                        "${Constants.it3}                                                      Rs. ${-1 * Constants.t3}",
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ),
                  ),
                ]),
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
