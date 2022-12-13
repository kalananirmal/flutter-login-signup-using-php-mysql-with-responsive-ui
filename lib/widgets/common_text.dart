import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;

  const CommonText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.teal.shade700,
        fontSize: 25,
        wordSpacing: 4,
        letterSpacing: 1,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
