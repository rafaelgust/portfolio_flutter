import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';
import 'package:portfolio/core/widgets/change_theme.dart';

import '../../widgets/nav/nav_bar.dart';

class HeaderView extends StatelessWidget {
  final ScrollController controller;
  const HeaderView({
    super.key,
    required this.controller,
  });

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
      height: 140,
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
          NavBar(scrollController: controller),
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
          NavBar(scrollController: controller),
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
          NavBar(scrollController: controller),
        ],
      ),
    );
  }
}
