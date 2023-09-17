import 'package:flutter/material.dart';
import 'package:portfolio/app/routes.dart';

import '../core/utils/theme_changer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = ThemeChanger.instance;

    return AnimatedBuilder(
      animation: themeChanger,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: themeChanger.getTheme(),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
