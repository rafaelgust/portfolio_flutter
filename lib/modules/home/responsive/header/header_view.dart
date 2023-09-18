import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';
import 'package:portfolio/core/widgets/change_theme.dart';
import 'package:portfolio/core/widgets/rive_idle.dart';

import '../../widgets/nav/nav_bar.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: mobile(context),
      tablet: tab(context),
      desktop: desk(context),
    );
  }

  Widget mobile(BuildContext context) {
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
                  child: Hero(
                    tag: 'logo',
                    child: RiveIdle(
                      path: 'logo',
                      animation: 'home',
                      size: 120,
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

  Widget desk(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(25.0),
              ),
            ),
            child: const Center(
              child: Hero(
                tag: 'logo',
                child: RiveIdle(
                  path: 'logo',
                  animation: 'home',
                  size: 120,
                ),
              ),
            ),
          ),
          const NavBar(),
          ChangeTheme(),
        ],
      ),
    );
  }

  Widget tab(BuildContext context) {
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
