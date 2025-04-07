import 'package:flutter/material.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';
import 'screens/splash_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isDark = false;

  void toggleTheme() => setState(() => isDark = !isDark);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pexa Test',
      theme: isDark ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(toggleTheme: toggleTheme, isDark: isDark),
    );
  }
}
