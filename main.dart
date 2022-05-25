import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scr/pages/splash_screen.dart';

void main() {
  runApp(LoginUIApp());
}

class LoginUIApp extends StatelessWidget {

  Color primaryColor = HexColor('#5afebc');
  Color _accentColor = HexColor('#02aeae');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(title: 'Flutter Login UI'),
    );
  }
}
