import 'package:flutter/material.dart';

class WindowContent extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final Widget content;

  const WindowContent({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.content,
  });

  @override
  State<WindowContent> createState() => _WindowContentState();
}

class _WindowContentState extends State<WindowContent> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: Row(
                      children: [
                        _button(color: Colors.red),
                        _button(color: Colors.orange),
                        _button(color: Colors.green),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text(widget.title),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.content,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button({MaterialColor? color}) => Container(
        width: 15,
        height: 15,
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
      );
}
