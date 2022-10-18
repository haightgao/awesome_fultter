import 'package:awesome_fultter/assets.dart';
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
          title: const Text('图片资源'),
        ),
        body: Column(
          children: [
            // 图片资源
            Image.asset(AssetImages.coffeeJpg),
          ],
        ),
      ),
    );
  }
}
