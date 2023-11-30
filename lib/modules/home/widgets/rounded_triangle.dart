import 'package:flutter/material.dart';

class AnimatedRotatedRoundedTriangle extends StatefulWidget {
  final Duration duration;
  final double width;
  final double height;
  final Color color;
  final bool clockwise;

  const AnimatedRotatedRoundedTriangle({
    super.key,
    required this.duration,
    required this.width,
    required this.height,
    required this.color,
    this.clockwise = true,
  });

  @override
  AnimatedRotatedRoundedTriangleState createState() =>
      AnimatedRotatedRoundedTriangleState();
}

class AnimatedRotatedRoundedTriangleState
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: (widget.clockwise ? 1 : -1) *
              _controller.value *
              2 *
              3.14159265359,
          child: CustomPaint(
            size: Size(widget.width, widget.height),
            painter: TrianglePainter(
              color: widget.color,
            ),
          ),
        );
      },
    );
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
