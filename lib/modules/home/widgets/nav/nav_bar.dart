import 'package:flutter/material.dart';

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
            title: 'Início',
            onTap: () => scrollToWidget(1),
          ),
          NavItem(
            title: 'Projetos',
            onTap: () => scrollToWidget(2),
          ),
          NavItem(
            title: 'Contato',
            onTap: () => scrollToWidget(3),
          ),
        ],
      ),
    );
  }
}
