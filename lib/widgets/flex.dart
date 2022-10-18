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
          title: const Text('Flex 弹性布局'),
        ),
        body: const FlexPage(),
      ),
    );
  }
}

class FlexPage extends StatelessWidget {
  const FlexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
          const Spacer(),
          const Expanded(
            flex: 1,
            child: FlutterLogo(
              size: 100,
            ),
          )
        ],
      ),
    );
  }
}
