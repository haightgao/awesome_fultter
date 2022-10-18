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
          title: const Text('Align对齐定位'),
        ),
        body: const AlignPage(),
      ),
    );
  }
}

class AlignPage extends StatelessWidget {
  const AlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      // 对齐方式
      alignment: Alignment.bottomRight,
      // 微调对齐方式
      // alignment: const Alignment(1, 1),
      // 从左上角开始计算偏移量
      // alignment: const FractionalOffset(1, 1),
      // 宽度因子
      widthFactor: 2,
      // 高度因子
      heightFactor: 2,
      child: Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
    );
  }
}
