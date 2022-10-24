import 'package:flutter/material.dart';

class SketchPad extends StatefulWidget {
  const SketchPad({super.key});

  @override
  State<SketchPad> createState() => _SketchPadState();
}

class _SketchPadState extends State<SketchPad> {
  final List<Offset?> _points = [];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        // debugPrint(details.localPosition.toString());
        _points.add(details.localPosition);
        setState(() {});
      },
      onPanEnd: (details) {
        _points.add(null);
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: CustomPaint(
          painter: SketchPainter(_points),
        ),
      ),
    );
  }
}

class SketchPainter extends CustomPainter {
  final List<Offset?> points;

  SketchPainter(this.points);

  static final pen = Paint()
    ..color = Colors.black
    ..strokeWidth = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, pen);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
