import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import 'home_screen.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  CreditCardScreenState createState() => CreditCardScreenState();
}

class CreditCardScreenState extends State<CreditCardScreen> {
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
          Padding(
            padding: const EdgeInsets.only(top: 64),
            child: Row(
              children: [
                TextButton(
                    onPressed: goHome,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Your cards",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          // ignore: non_constant_identifier_names
          CreditCardWidget(
            cardHolderName: '',
            cardNumber: '',
            cvvCode: '',
            expiryDate: '',
            onCreditCardWidgetChange: (CreditCardBrand) {},
            showBackView: false,
          ),

          Row(children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  width: 200,
                  height: 72,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color(0xff404040),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            SizedBox(
              width: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color(0xff404040),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 330,
              height: 320,
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color(0xff404040),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
