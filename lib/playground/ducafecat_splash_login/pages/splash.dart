import 'package:awesome_fultter/playground/ducafecat_splash_login/common/app_colors.dart';
import 'package:awesome_fultter/playground/ducafecat_splash_login/pages/welcome.dart';
import 'package:flutter/material.dart';

import '../common/assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // 计数变量
  final duration = 3;
  int number = 0;

  @override
  void initState() {
    super.initState();
    _countDown();
  }

  // 倒计时函数
  Future<void> _countDown() async {
    number = duration;
    for (var i = 0; i < duration; i++) {
      await Future.delayed(const Duration(seconds: 1), () {
        if (mounted == true) {
          setState(() {
            --number;
          });
        }
      });

      if (number == 0) {
        debugPrint('倒计时结束');
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const WelcomePage()),
          );
        }
      }
    }
  }

  // logo
  Widget _buildLogo() {
    return Stack(
      alignment: Alignment.center,
      children: [
        // 底部
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(60),
          ),
        ),

        // 图片
        Image.asset(
          AssetsImages.logoPng,
          width: 84,
          height: 80,
        )
      ],
    );
  }

  // 文字显示
  Text _buildText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 19,
        // fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Colors.white,
        // 行高 css行高 / 字体大小
        height: 22 / 19,
      ),
    );
  }

  // 主视图
  Widget _buildView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          _buildLogo(),
          const SizedBox(height: 24),

          // 标题
          _buildText('Online Market'),
          const SizedBox(height: 27),

          // 计数器
          _buildText(number > 0 ? '$number' : 'done'),

          // end
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash,
      body: _buildView(context),
    );
  }
}
