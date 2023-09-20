import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
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

  ThemeController._privateConstructor() {
    _themeData = lightTheme;
  }

  static final ThemeController _instance =
      ThemeController._privateConstructor();

  static ThemeController get instance => _instance;

  getTheme() => _themeData;

  setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}
