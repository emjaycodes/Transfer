// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  static String id = 'transferScreen';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
        // alignment: Alignment.center,
        quarterTurns: -1,
        child: Text(
            'Transfer',
            style: TextStyle(color: Colors.white, fontSize: 130)
        ),
  ),
      ],
    );

    // 
    // Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(image: AssetImage('images/transfer.jpeg'),
    //                 fit: BoxFit.fill
    //                 ),
    //   ),
    // );
  }
}