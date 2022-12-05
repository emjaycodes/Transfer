// ignore_for_file: prefer_const_constructors

import 'package:e_wallet_app/screens/home_screen.dart';
import 'package:e_wallet_app/screens/transaction_screen.dart';
import 'package:e_wallet_app/screens/transferred_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context) => HomeScreen(),
        TransactionPage.id:(context)=> TransactionPage(),
        TransferPage.id:(context) => TransferPage(),
      },
    );
  }
}

