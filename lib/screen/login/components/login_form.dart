import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_admin/constants.dart';
import 'package:login_admin/widgets/common_button.dart';
import 'package:login_admin/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController user_n = TextEditingController();
  TextEditingController user_p = TextEditingController();
  bool isPasswordVisible = true;

  @override
  void initState() {
    user_n.addListener(() {
      setState(() {});
    });
  }

  void ispasswordvisible() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  Future register() async {
    var url =
        "http://your_ip_address/backend_file.php"; //here add your IP Address and PHP Backend File Name
    var responce = await http.post(Uri.parse(url), body: {
      "username": user_n.text,
      "password": user_p.text,
    });

    var data = json.decode(responce.body);
    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "This user already exit",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.teal,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "User create success",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    user_n.clear();
    user_p.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Column(
          children: [
            CustomTextFormField(
              controller: user_n,
              label: 'User Name',
              suffixIcon: user_n.text.isEmpty
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        user_n.clear();
                      },
                    ),
            ),
            const SizedBox(height: defaultPadding),
            CustomTextFormField(
              label: 'Password',
              controller: user_p,
              suffixIcon: TextButton(
                child: isPasswordVisible ? Text('Show') : Text('Hide'),
                onPressed: () => ispasswordvisible(),
              ),

              // suffixIcon: user_p.text.isEmpty
              // ? TextButton(
              //     onPressed: () {
              //       isPasswordVisible;
              //     },
              //     child: Text('Show'),
              //   )
              // : TextButton(
              //     onPressed: () {},
              //     child: Text('Hide'),
              //   ),
              obscureText: isPasswordVisible,
            ),
            const SizedBox(height: defaultPadding),
            CommonElevatedButton(
              text: 'Login',
              onPressed: () {
                register();
              },
            ),
            const SizedBox(
              height: defaultPadding * 7,
            )
          ],
        ),
      ),
    );
  }
}
