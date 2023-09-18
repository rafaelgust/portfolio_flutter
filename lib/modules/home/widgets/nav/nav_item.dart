import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const NavItem({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10.0),
        hoverColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
