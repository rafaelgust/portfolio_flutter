import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/controllers/theme_controller.dart';

class ChangeTheme extends StatelessWidget {
  ChangeTheme({super.key});

  final themeChanger = ThemeController.instance;

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
    return Container(
      width: 80,
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
        ),
      ),
      child: Center(
        child: IconButton(
          onPressed: change,
          icon: FaIcon(icon()),
        ),
      ),
    );
  }
}
