import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive_widget.dart';

import '../widgets/nav/nav_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rafael Gust'),
                NavBar(),
              ],
            ),
          ),
          ResponsiveWidget(
            mobile: Container(height: 150, color: Colors.green),
            tablet: Container(height: 150, color: Colors.blue),
            desktop: Container(height: 150, color: Colors.pink),
          ),
          Container(height: 150, color: Colors.blue),
          Container(height: 500, color: Colors.red),
          Container(height: 900, color: Colors.orange),
        ],
      ),
    );
  }
}
