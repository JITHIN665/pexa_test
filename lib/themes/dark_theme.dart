import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorSchemeSeed: Colors.deepPurple,
  scaffoldBackgroundColor: const Color(0xFF1E1E2C),
  appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF262645), foregroundColor: Colors.white, elevation: 2),
  cardTheme: CardTheme(color: Color(0xFF2E2E48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)), elevation: 6),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF3A3A5A),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    prefixIconColor: Colors.deepPurpleAccent,
  ),
);
