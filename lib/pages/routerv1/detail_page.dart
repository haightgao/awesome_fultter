import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    // 命名路由接收参数
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    var title2 = arguments['title'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('详情页'),
      ),
      body: Column(
        children: [
          Text('详情页, title: ${title ?? title2}'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'ok');
              },
              child: const Text('返回'))
        ],
      ),
    );
  }
}
