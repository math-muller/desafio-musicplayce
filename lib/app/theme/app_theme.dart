import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black87),
    ),
    labelStyle: TextStyle(color: Colors.red.shade900, fontSize: 14),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black38),
    ),
  );

  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.red.shade900),
      textStyle: MaterialStateProperty.all(
        TextStyle(color: Colors.white),
      ),
    ),
  );

  return ThemeData(
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
  );
}
