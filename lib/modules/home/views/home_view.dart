import 'package:flutter/material.dart';

import '../responsive/about_me/about_me_view.dart';
import '../responsive/contact/contact_view.dart';
import '../responsive/header/header_view.dart';
import '../responsive/projects/projects_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrollingDown = false;
  double _lastScrollOffset = 0.0;

  void _scrollListener() {
    if (_scrollController.offset > _lastScrollOffset) {
      setState(() => _isScrollingDown = true);
    } else {
      setState(() => _isScrollingDown = false);
    }
    _lastScrollOffset = _scrollController.offset;
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const HeaderView(),
            const SizedBox(key: GlobalObjectKey(1)),
            const AboutMe(key: GlobalObjectKey(0)),
            Container(
              key: const GlobalObjectKey(2),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    Colors.transparent,
                  ],
                ),
              ),
              height: 700,
              child: const ProjectsView(),
            ),
            const SizedBox(
              key: GlobalObjectKey(3),
              width: double.infinity,
              height: 900,
              child: ContactView(),
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
      floatingActionButton: _isScrollingDown
          ? FloatingActionButton(
              onPressed: () {
                _scrollController.animateTo(0.0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              child: const Icon(Icons.arrow_upward),
            )
          : null,
    );
  }
}
