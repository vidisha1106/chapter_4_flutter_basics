import 'package:flutter/material.dart';

class ThemeClass {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.pink[900],
    fontFamily: 'Chivo',
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xffff4d6d), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          backgroundColor: const Color(0xfffff0f3),
          foregroundColor: const Color(0xffff4d6d),
          textStyle: const TextStyle(fontSize: 17, fontFamily: 'Chivo')),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontFamily: 'Chivo',
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );


  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.pink[900],
    fontFamily: 'DynaPuff',
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfffff0f3), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          backgroundColor: const Color(0xffff4d6d),
          foregroundColor: const Color(0xfffff0f3),
          textStyle: const TextStyle(fontSize: 17, fontFamily: 'DynaPuff')),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontFamily: 'DynaPuff',
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}