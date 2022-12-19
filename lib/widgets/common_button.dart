import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  VoidCallback onPressed;
  String? text;

  CommonElevatedButton({
    Key? key,
    required this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(300 - 110, 60),
          textStyle: const TextStyle(
            fontSize: 23,
          ),
          // side: const BorderSide(),
          shape: const StadiumBorder(),
          elevation: 5),
      child: Text(text ?? ''),
    );
  }
}
