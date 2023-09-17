import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const NavItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
