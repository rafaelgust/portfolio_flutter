import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData? _themeData;

  final darkTheme = ThemeData.dark(
    useMaterial3: true,
  );
  final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 247, 248, 250),
    ),
  );

  ThemeChanger._privateConstructor() {
    _themeData = lightTheme;
  }

  static final ThemeChanger _instance = ThemeChanger._privateConstructor();

  static ThemeChanger get instance => _instance;

  getTheme() => _themeData;

  setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}
