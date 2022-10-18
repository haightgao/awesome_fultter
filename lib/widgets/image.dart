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
          title: const Text('Image 图片'),
        ),
        body: const SingleChildScrollView(child: ImagePage()),
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [for (var item in BoxFit.values) _buildFitImage(item)],
    );
  }

  Column _buildFitImage(fit) {
    return Column(
      children: [
        Text('$fit'),
        SizedBox(
          width: 300,
          height: 300,
          child: Image.asset(
            AssetImages.welcomePng,
            color: Colors.amber,
            // 添加背景颜色
            colorBlendMode: BlendMode.dstOver,
            fit: fit,
          ),
        ),
      ],
    );
  }
}
