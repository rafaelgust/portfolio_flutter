import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class RiveIdle extends StatefulWidget {
  final String path;
  final String animation;
  final double size;
  const RiveIdle(
      {super.key,
      required this.path,
      required this.size,
      required this.animation});

  @override
  State<RiveIdle> createState() => _RiveIdleState();
}

class _RiveIdleState extends State<RiveIdle> {
  late rive.RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = rive.SimpleAnimation(widget.animation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Center(
        child: rive.RiveAnimation.asset(
          '/rive/${widget.path}.riv',
          controllers: [_controller],
        ),
      ),
    );
  }
}
