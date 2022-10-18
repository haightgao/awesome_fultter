import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App 标题
      // ios 没有使用 android 进程名称 web 标题栏名称
      title: '我是标题',

      // App 颜色
      color: Colors.green,

      // 样式
      theme: ThemeData(primarySwatch: Colors.yellow),

      // 暗色主题样式
      darkTheme: ThemeData(primarySwatch: Colors.red),

      // 是否显示右上角的debug标记
      debugShowCheckedModeBanner: false,

      // 是否语义调试
      showSemanticsDebugger: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Materail App'),
        ),
        body: Center(
          child: Column(
            children: const [
              Text('data'),
              FlutterLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
