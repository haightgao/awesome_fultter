import 'package:awesome_fultter/playground/ducafecat_splash_login/common/assets.dart';
import 'package:awesome_fultter/playground/ducafecat_splash_login/pages/login.dart';
import 'package:flutter/material.dart';

import '../common/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  // 标题
  Padding _buildText() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: Text(
        'Browse & Order All Products at Any Time',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xff2B2A2A),
          height: 23 / 20,
        ),
      ),
    );
  }

  // 按钮组
  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          // skip
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Color(0xff2B2A2A),
                height: 18 / 15,
              ),
            ),
          ),

          const Spacer(),

          // get started
          ButtonWeight(
            text: 'Get Started',
            width: 139,
            height: 42,
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage())),
          ),
        ],
      ),
    );
  }

  // 主视图
  Widget _buildView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 标题
        _buildText(),
        const SizedBox(height: 70),

        // 图片
        Image.asset(
          AssetsImages.welcomePng,
          height: 409,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 70),

        // 按钮组
        _buildButtons(context),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _buildView(context)),
    );
  }
}
