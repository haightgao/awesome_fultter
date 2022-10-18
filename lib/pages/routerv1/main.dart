import 'package:awesome_fultter/pages/routerv1/detail_page.dart';
import 'package:awesome_fultter/pages/routerv1/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('路由v1'),
      //   ),
      //   body: Column(
      //     children: [
      //       // 需要使用Builder包裹
      //       // 否则报错：Navigator operation requested with a context that does not include a Navigator
      //       Builder(
      //         builder: (context) => ElevatedButton(
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => const DetailPage()),
      //             );
      //           },
      //           child: const Text('Navigator.push 进入详情页'),
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      // 命名路由,不能使用home属性
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/detail': (context) => const DetailPage()
      // },

      // 手动解析
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomePage());
        }

        if (settings.name == '/detail') {
          return MaterialPageRoute(
              builder: (context) => const DetailPage(
                    title: 'aaa',
                  ));
        }

        // detail/:id
        var uri = Uri.parse(settings.name!);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'detail') {
          String id = uri.pathSegments[1];
          return MaterialPageRoute(
            builder: (context) => DetailPage(
              title: 'ducafecat $id',
            ),
          );
        }
        return null;
      },
      // 默认路由
      // initialRoute: '/',
      // home: const HomePage(),
    );
  }
}
