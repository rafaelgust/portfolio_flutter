import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';

import '../../widgets/rounded_triangle.dart';
import '../../widgets/window_content.dart';
import 'carousel.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: mobile(),
      tablet: mobile(),
      desktop: desk(),
    );
  }

  Widget mobile() {
    return Container();
  }

  Widget desk() {
    return Center(
      child: Column(
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
                          DefaultTextStyle(
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontFamily: 'RobotoMono',
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            child: AnimatedTextKit(
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TyperAnimatedText("Dart - Flutter")
                              ],
                            ),
                          ),
                          DefaultTextStyle(
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.red,
                              fontFamily: 'RobotoMono',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            child: AnimatedTextKit(
                              isRepeatingAnimation: false,
                              animatedTexts: [TyperAnimatedText("Java")],
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
                    Positioned(
                      child: ClipOval(
                        child: SizedBox(
                          width: 300,
                          height: 300,
                          child: Center(
                            child: Image.network(
                              'https://images.unsplash.com/photo-1549692520-acc6669e2f0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2574&q=80', // Substitua pela URL da sua imagem
                              width: 450,
                              height: 450,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          const Carousel(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: const WindowContent(
              width: 900,
              height: 400,
              title: 'Sobre mim',
              content: Center(
                child: Text('dsad'),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
