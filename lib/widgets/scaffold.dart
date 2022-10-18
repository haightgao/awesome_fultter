import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ScaffoldPage());
  }
}

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 菜单栏
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),

      // 悬浮按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_photo_alternate),
      ),

      // 悬浮按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // 固定在下方显示的按钮
      persistentFooterButtons: const [
        Text('persistentFooterButton1'),
        Text('persistentFooterButton2'),
      ],

      // 压缩顶部菜单栏空间（高度）
      // primary: false,

      // 左侧侧滑抽屉菜单
      drawer: const Drawer(
        child: Center(child: Text('左侧菜单')),
      ),

      // 右侧侧滑抽屉菜单
      endDrawer: const Drawer(
        child: Center(child: Text('右侧菜单')),
      ),

      // 检测手势行为方式，与drawer配合使用 down 方式有卡顿,建议使用 DragStartBehavior.start
      // drawerDragStartBehavior: DragStartBehavior.start,

      // 底部导航栏
      bottomNavigationBar: const Text('bottomNavigationBar'),

      // 底部拉出菜单
      bottomSheet: const Text('bottomSheet'),

      // 背景色
      backgroundColor: Colors.amberAccent,

      // 自动适应底部padding
      // resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('showSnackBar'),
              onPressed: () {
                // 应用消息管理
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Hello'),
                  ),
                );
              },
            ),

            // 当BuildContext在Scaffold之前时，调用Scaffold.of(context)会报错。这时可以通过Builder Widget来解决
            Builder(
              builder: (BuildContext context) => ElevatedButton(
                child: const Text('showDrawer'),
                onPressed: () {
                  // 脚手架管理
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),

            // 下面这种写法会报错
            // FlutterError (Scaffold.of() called with a context that does not contain a Scaffold
            // ElevatedButton(
            //   child: const Text('showDrawer'),
            //   onPressed: () {
            //     // 脚手架管理
            //     Scaffold.of(context).openDrawer();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
