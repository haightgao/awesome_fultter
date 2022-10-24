import 'package:awesome_fultter/pages/sketch_pad_drawline/sketch_pad.dart';
import 'package:flutter/material.dart';

/// 画板
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('画板'),
        ),
        body: const SketchPad(),
      ),
    );
  }
}
