import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';
import 'package:portfolio/core/widgets/change_lang.dart';
import 'package:portfolio/core/widgets/change_theme.dart';

import '../../widgets/logo_topbar.dart';
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
              const LogoTopBar(),
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
          const LogoTopBar(),
          const NavBar(),
          Row(
            children: [
              ChangeLang(),
              ChangeTheme(),
            ],
          ),
        ],
      ),
    );
  }

  Widget tab(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoTopBar(),
          const NavBar(),
          ChangeTheme(),
        ],
      ),
    );
  }
}
