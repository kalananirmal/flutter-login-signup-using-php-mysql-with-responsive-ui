import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String? topImage;


  final String? bottomImage;

  const Background({
    Key? key,
    required this.child,
    this.topImage = 'assets/images/main_top.png',
    this.bottomImage = 'assets/images/login_bottom.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              width: 120,
              child: Image.asset(bottomImage ?? ""),
            ),
            Positioned(
              top: 0,
              left: 0,
              width: 120,
              child: Image.asset(topImage ?? ""),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
