// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.profileName,
    required this.profileImage,
  }) : super(key: key);

  final String profileName;
  final ImageProvider profileImage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: profileImage, fit: BoxFit.fitWidth),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Text(
                        profileName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '****7832',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
