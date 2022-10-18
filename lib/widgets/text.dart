import 'package:flutter/gestures.dart';
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
          title: const Text('Text文本组件'),
        ),
        body: const TextPage(),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 文本
        const Text(
          '我是文本',
          // 字体放大因子
          textScaleFactor: 1.5,
          style: TextStyle(
            fontSize: 24,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),

        // 文字溢出
        const Text(
          'Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.',
          // 最大行树
          maxLines: 3,
          // 是否允许换行
          // softWrap: false,
          // 溢出，设置此属性后softWrap自动设置为true
          overflow: TextOverflow.ellipsis,
        ),

        // 富文本
        const Text.rich(
          TextSpan(text: '平林漠漠烟如织，', children: [
            TextSpan(
              text: '寒山一带伤心碧。',
              style: TextStyle(color: Colors.red),
            ),
            TextSpan(
              text: '暝色入高楼，有人楼上愁。',
              style: TextStyle(color: Colors.blue),
            ),
          ]),
        ),
        // 添加交互
        Text.rich(
          TextSpan(
              text: '可以点击我呀',
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  debugPrint('点击了');
                }),
        ),
      ],
    );
  }
}
