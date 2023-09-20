import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';

import 'rive_idle.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      back();
    });
  }

  back() async {
    await Future.delayed(const Duration(seconds: 2));
    context.pushReplacement('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      body: const Center(
        child: Hero(
          tag: 'logo',
          child: RiveIdle(
            path: 'logo',
            animation: 'loading',
            size: 200,
          ),
        ),
      ),
    );
  }
}
