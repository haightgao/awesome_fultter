import 'package:flutter/material.dart';

class SketchPad extends StatefulWidget {
  const SketchPad({super.key});

  @override
  State<SketchPad> createState() => _SketchPadState();
}

class _SketchPadState extends State<SketchPad> {
  final Path _previousPath = Path();
  Path _currentPath = Path();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (details) {
        setState(() {
          _currentPath.moveTo(
              details.localPosition.dx, details.localPosition.dy);
        });
      },
      onPanUpdate: (details) {
        setState(() {
          _currentPath.lineTo(
              details.localPosition.dx, details.localPosition.dy);
        });
      },
      onPanEnd: (details) {
        _previousPath.addPath(_currentPath, Offset.zero);
        _currentPath = Path();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: CustomPaint(
          foregroundPainter: SketchPainter(_previousPath),
          painter: SketchPainter(_currentPath),
        ),
      ),
    );
  }
}

class SketchPainter extends CustomPainter {
  final Path path;

  static final pen = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0;
  SketchPainter(this.path);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(path, pen);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
