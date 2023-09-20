import 'package:flutter/material.dart';

class LangController extends ChangeNotifier {
  LangController._privateConstructor();

  static final LangController _instance = LangController._privateConstructor();

  static LangController get instance => _instance;

  Locale locale = const Locale('pt', 'BR');

  Future<void> changeLocale(String? lang) async {
    if (lang == "Português") {
      locale = const Locale('pt', 'BR');
    } else {
      locale = const Locale('en', 'US');
    }
    notifyListeners();
  }
}
