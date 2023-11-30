import 'package:flutter/material.dart';

class AnimatedRotatedRoundedTriangle extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final Duration duration;

  const AnimatedRotatedRoundedTriangle({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.duration,
  });

  @override
  State<AnimatedRotatedRoundedTriangle> createState() =>
      _AnimatedRotatedRoundedTriangleState();
}

class _AnimatedRotatedRoundedTriangleState
    extends State<AnimatedRotatedRoundedTriangle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2 * 3.14159265359,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: SizedBox(
              width: widget.width,
              height: widget.height,
              child: CustomPaint(
                painter: TrianglePainter(
                  color: widget.color,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter({super.repaint, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final Path path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
