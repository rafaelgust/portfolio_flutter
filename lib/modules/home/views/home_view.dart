import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';
import 'package:portfolio/core/widgets/icon_button.dart';

import '../responsive/about_me/about_me_view.dart';
import '../responsive/header/header_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderView(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    key: GlobalObjectKey(1),
                  ),
                  const AboutMe(
                    key: GlobalObjectKey(0),
                  ),
                  Container(
                    key: const GlobalObjectKey(2),
                    color: Colors.grey,
                    height: 900,
                  ),
                  Container(
                    key: const GlobalObjectKey(3),
                    width: double.infinity,
                    height: 900,
                    child: const Column(
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
                          url:
                              'https://www.youtube.com/channel/UCVL-T_T_1iEsXu9OS6f_soQ',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Copyright © 2023 @Rafael Gust',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Built with Flutter',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
