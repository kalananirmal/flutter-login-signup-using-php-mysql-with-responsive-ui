import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_admin/screen/admin_panel/admin_screens/home.dart';

import 'package:login_admin/screen/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.teal,
      ),
      home: const WelcomeScreen(),
    );
  }
}
