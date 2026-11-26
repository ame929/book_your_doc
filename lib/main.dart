import 'package:flutter/material.dart';

import 'UI/pages/auth/LoginPage.dart';
import 'UI/utility/Constants.dart';

void main() {
  runApp(const BookYourDocApp());
}

/// Applicazione principale Book Your Doc con Material 3 e supporto tema chiaro/scuro.
class BookYourDocApp extends StatelessWidget {
  const BookYourDocApp({super.key});

  static const Color _seedColor = Color(0xFF006D77);

  @override
  Widget build(BuildContext context) {
    final lightColorScheme = ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.light,
    );

    final darkColorScheme = ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.dark,
    );

    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        appBarTheme: AppBarTheme(
          centerTitle: false,
          backgroundColor: lightColorScheme.surface,
          foregroundColor: lightColorScheme.onSurface,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        appBarTheme: AppBarTheme(
          centerTitle: false,
          backgroundColor: darkColorScheme.surface,
          foregroundColor: darkColorScheme.onSurface,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
