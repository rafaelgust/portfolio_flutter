import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';
import 'package:portfolio/core/widgets/change_theme.dart';

import '../../widgets/nav/nav_bar.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: mobile(),
      tablet: tab(),
      desktop: desk(),
    );
  }

  Widget mobile() {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 80,
                height: 60,
                child: Center(
                  child: Text(
                    'RG',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ChangeTheme(),
            ],
          ),
          const NavBar(),
        ],
      ),
    );
  }

  Widget desk() {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 250,
            child: DefaultTextStyle(
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText("Rafael Gust"),
                  TyperAnimatedText("RG")
                ],
              ),
            ),
          ),
          const NavBar(),
          ChangeTheme(),
        ],
      ),
    );
  }

  Widget tab() {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 80,
            child: Center(
              child: Text(
                'RG',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Spacer(),
          ChangeTheme(),
          const Spacer(),
          const NavBar(),
        ],
      ),
    );
  }
}
