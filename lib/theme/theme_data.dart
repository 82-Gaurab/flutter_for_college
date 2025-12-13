import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    fontFamily: "OpenSans Regular",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: "OpenSans Regular",
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    ),
    appBarTheme: AppBarThemeData(backgroundColor: Colors.red[400]),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.amber.shade400,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.grey[200],
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      filled: true,
      fillColor: Colors.grey.shade50,
    ),
  );
}
