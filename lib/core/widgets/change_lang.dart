import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:portfolio/core/controllers/lang_controller.dart';

class ChangeLang extends StatelessWidget {
  ChangeLang({super.key});

  final langChanger = LangController.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      ),
      child: DropdownButton(
        value: langChanger.locale == const Locale('pt', 'BR')
            ? 'Português'
            : 'Inglês',
        onChanged: (String? value) async {
          context.pushReplacement('/wait');
          langChanger.changeLocale(value);
        },
        items: <String>[
          'Português',
          'Inglês',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(value),
            ),
          );
        }).toList(),
        underline: Container(),
        style: TextStyle(
          fontSize: 13,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        dropdownColor: Theme.of(context).colorScheme.secondaryContainer,
        focusColor: Theme.of(context).colorScheme.secondaryContainer,
      ),
    );
  }
}
