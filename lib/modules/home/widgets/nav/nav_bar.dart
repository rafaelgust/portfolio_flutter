import 'package:flutter/material.dart';

import 'nav_item.dart';

class NavBar extends StatelessWidget {
  final ScrollController scrollController;
  const NavBar({super.key, required this.scrollController});

  scrollToWidget(String key) {
    if (GlobalObjectKey(key).currentContext != null) {
      Scrollable.ensureVisible(
        GlobalObjectKey(key).currentContext!,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 500),
      );
    } else {
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 500),
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
            onTap: () => scrollToWidget('0'),
          ),
          NavItem(
            title: 'Projetos',
            onTap: () => scrollToWidget('2'),
          ),
          NavItem(
            title: 'Contato',
            onTap: () => scrollToWidget('3'),
          ),
        ],
      ),
    );
  }
}
