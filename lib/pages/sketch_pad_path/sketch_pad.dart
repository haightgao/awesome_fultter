import 'package:flutter/material.dart';

class SketchPad extends StatefulWidget {
  const SketchPad({super.key});

  @override
  State<SketchPad> createState() => _SketchPadState();
}

class _SketchPadState extends State<SketchPad> {
  final List<Path?> paths = [];
  Path? _currentPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (details) {
        setState(() {
          _currentPath = Path();
          paths.add(_currentPath);
          _currentPath!
              .moveTo(details.localPosition.dx, details.localPosition.dy);
        });
      },
      onPanUpdate: (details) {
        setState(() {
          _currentPath!
              .lineTo(details.localPosition.dx, details.localPosition.dy);
        });
      },
      onPanEnd: (details) {
        _currentPath = null;
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: CustomPaint(
          painter: SketchPainter(paths),
        ),
      ),
    );
  }
}

class SketchPainter extends CustomPainter {
  final List<Path?> paths;

  static final pen = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0;
  SketchPainter(this.paths);

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < paths.length; i++) {
      canvas.drawPath(paths[i]!, pen);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
