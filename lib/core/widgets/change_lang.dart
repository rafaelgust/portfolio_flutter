import 'package:flutter/material.dart';

import 'package:portfolio/core/controllers/lang_controller.dart';

class ChangeLang extends StatelessWidget {
  ChangeLang({super.key});

  final langChanger = LangController.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0),
        ),
      ),
      child: Center(
        child: DropdownButton<String>(
          value: langChanger.locale == const Locale('pt', 'BR')
              ? 'Português'
              : 'Inglês',
          onChanged: (String? value) => langChanger.changeLocale(value),
          items: <String>[
            'Português',
            'Inglês',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
