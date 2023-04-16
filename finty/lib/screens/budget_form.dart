import 'package:finty/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BudgetForm extends StatefulWidget {
  const BudgetForm({Key? key}) : super(key: key);

  @override
  _BudgetFormState createState() => _BudgetFormState();
}

class _BudgetFormState extends State<BudgetForm> {
  void goHome() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c2c2c),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(onPressed: goHome, child: Icon(Icons.arrow_back)),
              Padding(
                padding: const EdgeInsets.all(64.0),
                child: Text(
                  "Add Budget Instance",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: null,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                  borderRadius:
                      BorderRadius.all(Radius.circular(50.0)), //<-- SEE HERE
                ),
                hintText: 'Budget(in Rs.)',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: null,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                  borderRadius:
                      BorderRadius.all(Radius.circular(50.0)), //<-- SEE HERE
                ),
                hintText: 'Period(in days)',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: null,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                  borderRadius:
                      BorderRadius.all(Radius.circular(50.0)), //<-- SEE HERE
                ),
                hintText: 'Amount(in Rs.)',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
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
                        "Budget Exceeded",
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
          const ElevatedButton(
            onPressed: null,
            child: Text(
              "Done",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
