// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screens/transaction_screen.dart';

class TransactionButton extends StatelessWidget {
  const TransactionButton({
    Key? key, required this.bttnName, required this.bttnColor, required this.textColor,
  }) : super(key: key);

  final String bttnName;
  final Color bttnColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, TransactionPage.id);
      },
      child: Container(
        width: 150,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bttnColor,
        ),
        child: Center(
            child: Text(
          bttnName,
          style: TextStyle(
            color: textColor
          ),
        )),
      ),
    );
  }
}
