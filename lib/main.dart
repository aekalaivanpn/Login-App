import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

void main() {
  runApp(MaterialApp(

    theme: ThemeData(
      fontFamily: 'Poppins',
      primaryColor: Colors.white,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      accentColor: Colors.redAccent[400],
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent[400]),
        headline2: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
          color: Colors.redAccent[400],
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Colors.blueAccent,
        ),
      ),
    ),

    home: LoginPage(),

  ));
}

