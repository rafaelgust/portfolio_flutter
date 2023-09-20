import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/rive_idle.dart';

class LogoTopBar extends StatelessWidget {
  const LogoTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            size: 60,
          ),
        ),
      ),
    );
  }
}
