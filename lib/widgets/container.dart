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
          title: const Text('Container'),
        ),
        body: const Center(child: ContainerPage()),
      ),
    );
  }
}

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // 容器
          Container(
            // 背景色
            // color: Colors.amber,
            width: 300,
            height: 200,
            margin: const EdgeInsets.only(top: 100),
            alignment: Alignment.center,

            // 容器修饰
            decoration: BoxDecoration(
              // 背景色
              color: Colors.amberAccent,

              // 边框
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),

              // 圆角
              borderRadius: BorderRadius.circular(20),

              // 阴影
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(3, 3),
                  blurRadius: 4,
                ),
              ],

              // 背景图片
              image: const DecorationImage(
                image: NetworkImage('https://img.yzcdn.cn/vant/cat.jpeg'),
                fit: BoxFit.cover,
                opacity: 1,
              ),
            ),

            // 前景装饰
            foregroundDecoration: BoxDecoration(
              color: Colors.red.withOpacity(0.3),
            ),

            // 转换
            // transform: Matrix4.rotationZ(0.2),

            // 约束
            // constraints: const BoxConstraints(
            //   minHeight: 100,
            //   maxHeight: 500,
            // ),
            constraints: const BoxConstraints.expand(height: 100),

            child: const Text('Container'),
          ),
        ],
      ),
    );
  }
}
