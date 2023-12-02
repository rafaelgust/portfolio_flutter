import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../responsive/about_me/widgets/carousel.dart';
import '../responsive/about_me/widgets/my_image.dart';
import '../widgets/rounded_triangle.dart';
import '../widgets/window_content.dart';

class AboutMeView extends StatefulWidget {
  const AboutMeView({super.key});

  @override
  State<AboutMeView> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              child: Row(
                children: [
                  Container(
                    width: 3,
                    margin: const EdgeInsets.only(right: 10),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  SizedBox(
                    width: 400.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                          child: DefaultTextStyle(
                            style: TextStyle(
                              fontFamily: 'RobotoMono',
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w100,
                              fontSize: 25,
                            ),
                            child: AnimatedTextKit(
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TyperAnimatedText('hi-my-name'.i18n()),
                              ],
                            ),
                          ),
                        ),
                        const Text(
                          'Rafael Augusto',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.w500,
                            fontSize: 50,
                          ),
                        ),
                        DefaultTextStyle(
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText('developer'.i18n()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: AnimatedRotatedRoundedTriangle(
                        width: 300.0,
                        height: 300.0,
                        clockwise: false,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.5),
                        duration: const Duration(seconds: 5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: AnimatedRotatedRoundedTriangle(
                        width: 300.0,
                        height: 300.0,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.5),
                        duration: const Duration(seconds: 5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: AnimatedRotatedRoundedTriangle(
                        width: 250.0,
                        height: 250.0,
                        clockwise: false,
                        color: Theme.of(context).colorScheme.primary,
                        duration: const Duration(seconds: 10),
                      ),
                    ),
                  ),
                  const Positioned(
                    child: MyImage(),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
        const Carousel(),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: WindowContent(
            width: 900,
            height: 400,
            title: 'about-me'.i18n(),
            content: const Center(
              child: Text('dsad'),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
