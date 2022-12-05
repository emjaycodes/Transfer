// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_wallet_app/screens/transferred_screen.dart';
import 'package:e_wallet_app/utill/transaction_card.dart';
import 'package:flutter/material.dart';
// import 'package:action_slider/action_slider.dart';
import 'package:slide_to_act/slide_to_act.dart' ;

import '../utill/keypad_rows.dart';


class TransactionPage extends StatefulWidget {
   const TransactionPage({super.key});

  static String id = 'transactionScreen';
  

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0F0F0F),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
      ),
      body: Column(
        children: [
          TransactionCard(
            profileImage: AssetImage('images/IMG_1153.jpeg'),
            profileName: 'Justice',
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '\$1000',
            style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'no tax',
            style: TextStyle(color: Colors.grey),
          ),

          // ignore: avoid_unnecessary_containers
          Container(
            child: Column(
              children: [
                KeypadRow(keypad1: '1', keypad2: '2', keypad3: '3',),
                SizedBox(height: 40,),
                KeypadRow(keypad1: '4', keypad2: '5', keypad3: '6',),
                SizedBox(height: 40,),
                KeypadRow(keypad1: '7', keypad2: '8', keypad3: '9',),
                SizedBox(height: 40,),
                KeypadRow4(keypad1: '.', keypad2: '0', keypad3: Icon(Icons.backspace,
                color: Colors.white,
                ),),
                
              ],
            ),
          ),
          SizedBox(height: 45,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SlideAction(
                sliderButtonIconPadding: 22,
                borderRadius: 15,
                innerColor: Color(0xFF266A61),
                outerColor: Colors.grey[800],
                sliderButtonIcon: Icon(Icons.fast_forward,
                color: Colors.white,
                ),
                text: 'swipe to send',
                textStyle: TextStyle(color:Colors.white),
                onSubmit: (() {
                  // do something
                   Navigator.pushNamed(context, TransferPage.id);
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}



class KeypadRow4 extends StatelessWidget {
  const KeypadRow4({
    Key? key, required this.keypad1, required this.keypad2, required this.keypad3,
  }) : super(key: key);
  
  final String keypad1;
  final String keypad2;
  final Icon keypad3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       TextButton(onPressed: (){print('text');}, child: Text(keypad1,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    )),
       TextButton(onPressed: (){print('text');}, child: Text(keypad2,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    )),
    TextButton(onPressed: (){print('text');}, child: IconButton(onPressed: null, icon: keypad3),
    
    ),
      ],
    );
  }
}

// class TransactKeypad extends StatelessWidget {
//   const TransactKeypad({
//     Key? key, required this.keypadNum,
//   }) : super(key: key);
//   final String keypadNum;

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(onPressed: (){print('text');}, child: Text(keypadNum,
//     style: TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.bold,
//       color: Colors.white
//     ),
//     ));
//   }
// }
