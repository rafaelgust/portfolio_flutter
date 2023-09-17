import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';

import '../widgets/nav/nav_bar.dart';

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
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Rafael Gust'),
                NavBar(scrollController: scrollController),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              controller: scrollController,
              children: [
                const SizedBox(
                  key: GlobalObjectKey('top'),
                ),
                ResponsiveWidget(
                  key: const GlobalObjectKey('about_me'),
                  mobile: Container(height: 150, color: Colors.green),
                  tablet: Container(height: 150, color: Colors.blue),
                  desktop: Container(height: 150, color: Colors.pink),
                ),
                Container(
                  key: const GlobalObjectKey('projects'),
                  height: 150,
                  color: Colors.blue,
                ),
                Container(
                    key: const GlobalObjectKey('contact'),
                    height: 500,
                    color: Colors.red),
                Container(
                  key: const GlobalObjectKey('about_me2'),
                  height: 900,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
