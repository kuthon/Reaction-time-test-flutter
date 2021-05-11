import 'package:flutter/material.dart';

final kDarkTheme = ThemeData.dark().copyWith(
  backgroundColor: Color(0xFF0a0a0a),
  primaryColor: Color(0xFF191919),
  shadowColor: Color(0xff111113),
  accentColor: Colors.green[500],
  focusColor: Colors.yellow[400],
  canvasColor: Colors.red[500],
  disabledColor: Colors.grey,
  textTheme: TextTheme(

    bodyText1: TextStyle(
      color: Color(0xFF747474),
      fontSize: 21,
      fontWeight: FontWeight.w300,
    ),

    headline1: TextStyle(
      color: Color(0xFFf4f5f9),
      fontSize: 26,
      fontWeight: FontWeight.w300,
    ),
    headline2: TextStyle(
      color: Color(0xFFf4f5f9),
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),

    bodyText2: TextStyle(
      color: Color(0xFF747474),
      fontSize: 16,
      fontWeight: FontWeight.w300,
    ),

  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 13, vertical: 8)),
      textStyle:  MaterialStateProperty.resolveWith((states) => TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFFe0e2e4)),
      foregroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF0a0a0a)), //0xFF72a6e2
      shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
    )
  ),



  iconTheme: IconThemeData(
    size: 40,
    color: Color(0xFF747474),
  ),

);


final kLightTheme = ThemeData.light().copyWith(
  backgroundColor: Color(0xFFeeedf0),
  primaryColor: Color(0xFFfffeff),
  shadowColor: Color(0xffe1e0e5),
  accentColor: Colors.green[500],
  focusColor: Colors.yellow[400],
  canvasColor: Colors.red[500],
  disabledColor: Colors.grey,
  textTheme: TextTheme(

    bodyText1: TextStyle(
      color: Color(0xFF747474),
      fontSize: 21,
      fontWeight: FontWeight.w300
    ),

      headline1: TextStyle(
        color: Color(0xFF5d5d5f),
        fontSize: 26,
        fontWeight: FontWeight.w300,
      ),
    headline2: TextStyle(
      color: Color(0xFF5d5d5f),
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),

    bodyText2: TextStyle(
        color: Color(0xFF747474),
        fontSize: 16,
        fontWeight: FontWeight.w300
    ),

  ),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 13, vertical: 8)),
        textStyle:  MaterialStateProperty.resolveWith((states) => TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF5381b6)),
        foregroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFFf6fcff)),
        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      )
  ),



  iconTheme: IconThemeData(
    size: 40,
    color: Color(0xFF747474),
  ),

);


