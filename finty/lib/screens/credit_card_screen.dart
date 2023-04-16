import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

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
            cardHolderName: 'Aniket Kumar',
            cardNumber: '3456 4321 5671 8154',
            cvvCode: '773',
            expiryDate: '27/04',
            cardBgColor: Colors.black,
            obscureCardNumber: false,
            obscureCardCvv: false,
            onCreditCardWidgetChange: (CreditCardBrand) {},
            showBackView: false,
          ),
        ],
      ),
    );
  }
}
