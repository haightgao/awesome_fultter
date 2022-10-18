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
          title: const Text('Wrap 流式布局'),
        ),
        body: const WrapPage(),
      ),
    );
  }
}

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // 主轴间距
      spacing: 10,
      // 纵轴间距
      runSpacing: 10,
      // 子组件在主轴上的对齐方式
      alignment: WrapAlignment.center,
      // 子组件在交叉轴上的对齐方式
      crossAxisAlignment: WrapCrossAlignment.end,
      // 垂直方向，默认为down，up则反向布局
      verticalDirection: VerticalDirection.down,
      children: [
        Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.amber,
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
