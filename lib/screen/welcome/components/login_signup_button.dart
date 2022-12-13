import 'package:flutter/material.dart';
import 'package:login_admin/screen/login/login_screen.dart';
import 'package:login_admin/widgets/common_button.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const LoginScreen();
            }));
          },
          text: 'LOGIN',
        ),
        const SizedBox(height: 10),
        CommonElevatedButton(
          onPressed: () {
            //TODO:
          },
          text: 'SIGN UP',
        ),
      ],
    );
  }
}
