import 'package:flutter/material.dart';

import 'nav_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
              title: 'Início',
              onTap: () {
                // Navegar para tela inicial
              }),
          NavItem(
              title: 'Sobre Mim',
              onTap: () {
                // Navegar para Sobre Mim
              }),
          NavItem(
              title: 'Contato',
              onTap: () {
                // Navegar para Contato
              }),
        ],
      ),
    );
  }
}
