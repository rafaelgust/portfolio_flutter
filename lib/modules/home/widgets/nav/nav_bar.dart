import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import 'nav_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  scrollToWidget(int key) {
    final targetContext = GlobalObjectKey(key).currentContext;
    if (targetContext != null) {
      Scrollable.ensureVisible(
        targetContext,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            title: 'me'.i18n(),
            onTap: () => scrollToWidget(1),
          ),
          NavItem(
            title: 'projects'.i18n(),
            onTap: () => scrollToWidget(2),
          ),
          NavItem(
            title: 'contact'.i18n(),
            onTap: () => scrollToWidget(3),
          ),
        ],
      ),
    );
  }
}
