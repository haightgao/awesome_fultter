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
          title: const Text('按钮'),
        ),
        body: const ButtonPage(),
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ElevatedButton(
          // 禁用按钮
          onPressed: null,
          // onPressed: () {},
          child: Text('ElevatedButton'),
        ),
        ElevatedButton(
          // 禁用按钮
          onPressed: () {},
          style: ButtonStyle(
            // 背景色
            backgroundColor: MaterialStateProperty.all(Colors.red),
            // 前景色
            foregroundColor: MaterialStateProperty.all(Colors.black),
            // 阴影高度
            elevation: MaterialStateProperty.all(10),
            // 阴影颜色
            shadowColor: MaterialStateProperty.all(Colors.blue),
            // 形状
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          child: const Text('ElevatedButton'),
        ),

        // 圆角按钮
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all(const StadiumBorder()),
          ),
          child: const Text('StadiumBorder'),
        ),

        // 文本按钮
        TextButton(onPressed: () {}, child: const Text('TextButton')),

        // 带图片文本按钮
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.holiday_village),
          label: const Text('TextButton.icon'),
        ),

        // 边框按钮
        OutlinedButton(onPressed: () {}, child: const Text('OutlineButton')),

        // 带图标的边框按钮
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.holiday_village),
            label: const Text('OutlineButton.icon')),
        // 图标按钮
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.holiday_village),
          iconSize: 50,
          color: Colors.amber,
        )
      ],
    );
  }
}
