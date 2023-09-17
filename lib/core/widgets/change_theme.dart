import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/theme_changer.dart';

class ChangeTheme extends StatelessWidget {
  ChangeTheme({super.key});

  final themeChanger = ThemeChanger.instance;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: themeChanger.getTheme() == themeChanger.darkTheme,
      onChanged: (bool value) => themeChanger
          .setTheme(value ? themeChanger.darkTheme : themeChanger.lightTheme),
    );
  }
}
