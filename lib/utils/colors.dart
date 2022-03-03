import 'package:flutter/material.dart';

class Constants {
  static String appName = "Arya-mates";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color red = Color(0xfff62f2f);

  static Color? lightAccent = Colors.blueGrey[900];
  static Color darkAccent = Colors.white;

  static Color lightBG = Color(0xfffcfcff);
  static Color textcolor = Colors.black;
  static Color badgeColor = Colors.red;
  static Color Orange = Color(0xffFFD54F);

  // theme colors are defined below :

  // for light theme
  static ThemeData lightTheme = ThemeData(
    backgroundColor: Orange,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: textcolor,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  //for Dark Theme

}
