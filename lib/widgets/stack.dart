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
          title: const Text('Stack 层叠布局'),
        ),
        body: const StackPage(),
      ),
    );
  }
}

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 子组件居中对齐
      alignment: Alignment.center,

      // 裁切方式 默认为 hardEdge
      // Clip.handEdge 如果子组件位置超出Stack的宽高，则会裁切掉超出的部分。
      // Clip.none 不会裁切超出部分
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Colors.red,
          width: 300,
          height: 300,
        ),
        Container(
          color: Colors.green,
          width: 200,
          height: 200,
        ),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),

        // 绝对定位
        const Positioned(
          left: 250,
          top: 0,
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ],
    );
  }
}
