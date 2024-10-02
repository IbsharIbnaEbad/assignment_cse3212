import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        color: Colors.white,
      ),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),

    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        fixedSize: Size.fromWidth(double.maxFinite),
        elevation: 9,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.5,
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        fontFamily: 'NotoSerif',
        fontWeight: FontWeight.w300,
        color: Colors.grey,
        fontSize: 14,
      ),
      labelStyle: const TextStyle(
        fontFamily: 'NotoSerif',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.black87,
      ),
      filled: true,
      fillColor: Colors.grey.shade100,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 12,
      ),
      border: _inputBorder(),
      enabledBorder: _enabledInputBorder(),
      focusedBorder: _focusedInputBorder(),
      errorBorder: _errorInputBorder(),
      focusedErrorBorder: _focusedErrorInputBorder(),
    ),


    textTheme: TextTheme(
      bodyLarge: const TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: 16,
        color: Colors.black,
      ),
      bodyMedium: const TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: 14,
        color: Colors.black54,
      ),

    ),
  );

  static OutlineInputBorder _inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 0,
      ),
    );
  }

  static OutlineInputBorder _enabledInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1.5,
      ),
    );
  }

  static OutlineInputBorder _focusedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.green,
        width: 2.0,
      ),
    );
  }

  static OutlineInputBorder _errorInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.redAccent,
        width: 1.5,
      ),
    );
  }

  static OutlineInputBorder _focusedErrorInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2.0,
      ),
    );
  }
}
