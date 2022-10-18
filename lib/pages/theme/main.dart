import 'package:awesome_fultter/pages/theme/utils.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var mc = Utils.stringToMaterialColor('0274BC');
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        // 主题颜色
        primarySwatch: Utils.stringToMaterialColor('0274BC'),

        // appbar 颜色
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: Utils.stringToMaterialColor('0274BC'),
              foregroundColor: Colors.white,
            ),

        // 按钮颜色
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Utils.stringToColor('FD8700'),
            textStyle: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('样式管理'),
        ),
        body: Column(
          children: [
            // 按钮
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Theme'),
              ),
            ),

            // 色彩表
            for (var i = 1; i < 10; i++)
              Container(
                color: mc[i * 100],
                height: 50,
              )
          ],
        ),
      ),
    );
  }
}
