import 'package:flutter/material.dart';


class KeypadRow extends StatelessWidget {
  const KeypadRow({
    Key? key, required this.keypad1, required this.keypad2, required this.keypad3,
  }) : super(key: key);
  
  final String keypad1;
  final String keypad2;
  final String keypad3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       TextButton(onPressed: (){print('text');}, child: Text(keypad1,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    )),
       TextButton(onPressed: (){print('text');}, child: Text(keypad2,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    )),
    TextButton(onPressed: (){print('text');}, child: Text(keypad3,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    )),
      ],
    );
  }
}