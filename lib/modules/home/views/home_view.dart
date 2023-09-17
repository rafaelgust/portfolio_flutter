import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';

import '../responsive/header/header_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderView(controller: scrollController),
          Expanded(
            child: ListView(
              controller: scrollController,
              children: [
                const SizedBox(
                  key: GlobalObjectKey('0'),
                ),
                ResponsiveWidget(
                  key: const GlobalObjectKey('1'),
                  mobile: Container(height: 500, color: Colors.grey),
                  tablet: Container(height: 500, color: Colors.grey),
                  desktop: Container(height: 500, color: Colors.grey),
                ),
                Container(
                  key: const GlobalObjectKey('2'),
                  height: 900,
                ),
                Container(
                  key: const GlobalObjectKey('3'),
                  height: 500,
                  color: Colors.grey,
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
        ],
      ),
    );
  }
}
