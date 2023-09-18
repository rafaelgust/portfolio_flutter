import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/theme_changer.dart';

class ChangeTheme extends StatelessWidget {
  ChangeTheme({super.key});

  final themeChanger = ThemeChanger.instance;

  void change() {
    themeChanger.setTheme(themeChanger.getTheme() == themeChanger.lightTheme
        ? themeChanger.darkTheme
        : themeChanger.lightTheme);
  }

  IconData icon() {
    return themeChanger.getTheme() == themeChanger.darkTheme
        ? FontAwesomeIcons.sun
        : FontAwesomeIcons.moon;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: change, icon: FaIcon(icon()));
  }
}
