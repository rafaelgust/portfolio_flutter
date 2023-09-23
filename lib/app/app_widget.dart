import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';

import 'package:portfolio/app/routes.dart';
import 'package:portfolio/core/controllers/lang_controller.dart';
import 'package:portfolio/core/controllers/theme_controller.dart';
import 'package:portfolio/core/utils/scroll_behavior.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/core/i18n'];

    final themeController = ThemeController.instance;
    final langController = LangController.instance;

    return AnimatedBuilder(
      animation: Listenable.merge([
        themeController,
        langController,
      ]),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Rafael Gust',
          locale: langController.locale,
          supportedLocales: const [
            Locale('pt', 'BR'),
            Locale('en', 'US'),
          ],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            LocalJsonLocalization.delegate,
          ],
          routerConfig: AppRouter.router,
          theme: themeController.getTheme(),
          debugShowCheckedModeBanner: false,
          scrollBehavior: MyCustomScrollBehavior(),
        );
      },
    );
  }
}
