import 'package:flutter/material.dart';

class LangController extends ChangeNotifier {
  LangController._privateConstructor();

  static final LangController _instance = LangController._privateConstructor();

  static LangController get instance => _instance;

  Locale locale = const Locale('pt', 'BR');

  changeLocale(String? lang) async {
    if (lang == "Português") {
      locale = const Locale('pt', 'BR');
    } else {
      locale = const Locale('en', 'US');
    }
    await Future.delayed(const Duration(seconds: 2));
    notifyListeners();
  }
}
