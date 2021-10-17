import 'package:flutter/material.dart';

class Letter extends StatelessWidget {
  const Letter({Key? key, required this.letter, required this.color}) : super(key: key);

  final String letter;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      letter,
      style: TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.height * 0.04,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
