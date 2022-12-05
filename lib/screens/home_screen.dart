// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_wallet_app/screens/transaction_screen.dart';
import 'package:flutter/material.dart';

import '../utill/history_card.dart';
import '../utill/profile_card.dart';
import '../utill/transaction_Bttn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  static String id = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF307B6F),
                            Color(0xFF19534F),
                          ],
                        )),
                    width: 400,
                    padding: EdgeInsets.only(
                        top: 60, left: 10, right: 10, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.only(right: 8),
                              constraints: BoxConstraints(),
                              onPressed: null,
                              icon: Icon(
                                Icons.segment_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'good evening',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF83B6B0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Text(
                                'Justice',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.only(right: 8),
                              constraints: BoxConstraints(),
                              onPressed: null,
                              icon: Icon(Icons.notification_important_rounded,
                                  color: Colors.white),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 50,
                        ),
                        //total balance
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'your total balance',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF83B6B0)),
                            ),
                            IconButton(
                              padding: EdgeInsets.only(right: 8),
                              constraints: BoxConstraints(),
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '\$12,739.85',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            TransactionButton(bttnColor: Colors.black, bttnName: 'request', textColor: Colors.white,),
                            SizedBox(width: 10),
                           TransactionButton(bttnColor: Colors.white, bttnName: 'send', textColor: Colors.black,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'quick send',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'view all',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      height: 70,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ),
                        ProfileCard(
                          profileColor: Colors.white,
                          pics: AssetImage('images/IMG_1276.jpeg'),
                        ),
                        ProfileCard(
                          profileColor: Colors.green,
                          pics: AssetImage('images/IMG_1153.jpeg'),
                        ),
                        ProfileCard(
                          profileColor: Colors.white,
                          pics: AssetImage('images/IMG_1266.jpeg'),
                        ),
                        ProfileCard(
                          profileColor: Colors.white,
                          pics: AssetImage('images/sha.jpeg'),
                        ),
                        ProfileCard(
                          profileColor: Colors.green,
                          pics: AssetImage('images/IMG_1282.jpeg'),
                        ),
                        ProfileCard(
                          profileColor: Colors.white,
                          pics: AssetImage('images/IMG_1276.jpeg'),
                        ),
                      ])),
                ),
                //history text
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'history',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'view all',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                GridView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    children: [
                      HistoryCard(
                        profileName: 'prince',
                        profileImage: AssetImage('images/IMG_1276.jpeg'),
                      ),
                      HistoryCard(
                          profileName: 'desmond',
                          profileImage: AssetImage(
                            'images/IMG_1266.jpeg',
                          )),
                      HistoryCard(
                          profileName: 'shalom',
                          profileImage: AssetImage(
                            'images/sha.jpeg',
                          )),
                      HistoryCard(
                          profileName: 'amara',
                          profileImage: AssetImage(
                            'images/IMG_1153.jpeg',
                          ))
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

