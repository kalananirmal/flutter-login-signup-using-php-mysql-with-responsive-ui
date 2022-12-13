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
          fixedSize: const Size(300, 60),
          textStyle: const TextStyle(
            fontSize: 23,
          ),
          side: const BorderSide(color: Colors.white, width: 1),
          shape: const StadiumBorder(),
          elevation: 10),
      child: Text(text ?? ''),
    );
  }
}
