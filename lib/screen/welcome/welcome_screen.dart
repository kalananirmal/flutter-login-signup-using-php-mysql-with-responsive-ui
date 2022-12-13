import 'package:flutter/material.dart';
import 'package:login_admin/responsive.dart';
import 'package:login_admin/screen/components/background.dart';
import 'package:login_admin/screen/welcome/components/login_signup_button.dart';
import 'package:login_admin/screen/welcome/components/welcome_image.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Responsive(
              desktop: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Expanded(
                    child: WelcomeImage(),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 450,
                          child: LoginAndSignupBtn(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              mobile: const MobileWelcomeScreen(),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const WelcomeImage(),

        Row(
          children: const [

            Expanded(
              child: LoginAndSignupBtn(),
            ),

          ],
        ),
      ],
    );
  }
}
