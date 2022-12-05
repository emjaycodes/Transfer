import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.profileColor,  required this.pics, 
  }) : super(key: key);

  final Color profileColor;
  final ImageProvider pics;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 1),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: profileColor, borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: pics,
                      fit: BoxFit.fitWidth
                      ),
            ),
      ),
    );
  }
}
