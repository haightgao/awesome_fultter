import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('溅墨效果 Ink Well'),
        ),
        body: Center(
          child: InkWell(
            // 水波纹颜色
            splashColor: Colors.blue,

            // 高亮颜色
            highlightColor: Colors.yellow,

            // 鼠标滑过颜色
            hoverColor: Colors.brown,
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                '点击我',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
