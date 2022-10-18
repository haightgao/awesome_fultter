import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('路由v1'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              var result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                    title: 'ducafecat',
                  ),
                ),
              );

              debugPrint('路由返回的值：$result');
            },
            child: const Text('Navigator.push 进入详情页'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/detail',
                  arguments: {'title': '命名路由 ducafecat'});
            },
            child: const Text('命名路由 进入详情页'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/detail/111',
                  arguments: {'title': '命名路由 ducafecat'});
            },
            child: const Text('带url参数 进入详情页'),
          ),
        ],
      ),
    );
  }
}
