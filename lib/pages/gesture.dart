import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double? dx, dy;

  Widget _buildView() {
    return GestureDetector(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.amber,
      ),
      onTap: () {
        debugPrint('onTap');
      },
      onLongPress: () {
        debugPrint('onLongPress');
      },
      onDoubleTap: () {
        debugPrint('onDoubleTap');
      },
      // 按下
      onPanDown: (DragDownDetails e) {
        debugPrint('按下 ${e.globalPosition}');
      },

      // 滑动
      onPanUpdate: (DragUpdateDetails e) {
        setState(() {
          dx = e.delta.dx;
          dy = e.delta.dy;
        });
      },

      // 松开
      onPanEnd: (DragEndDetails e) {
        debugPrint(e.velocity.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('手势识别'),
        ),
        body: Center(
          child: Column(
            children: [
              _buildView(),
              Text('x: $dx, y: $dy'),
            ],
          ),
        ),
      ),
    );
  }
}
