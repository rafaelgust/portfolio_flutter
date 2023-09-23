import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localization/localization.dart';
import 'package:portfolio/core/widgets/icon_button.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'contact'.i18n(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButtonLink(
                icon: FontAwesomeIcons.instagram,
                url: 'https://www.instagram.com/gust.dev/',
              ),
              IconButtonLink(
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/rafaelgust',
              ),
              IconButtonLink(
                icon: FontAwesomeIcons.youtube,
                url: 'https://www.youtube.com/channel/UCVL-T_T_1iEsXu9OS6f_soQ',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
