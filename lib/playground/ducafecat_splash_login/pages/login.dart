import 'package:awesome_fultter/playground/ducafecat_splash_login/common/app_colors.dart';
import 'package:awesome_fultter/playground/ducafecat_splash_login/common/assets.dart';
import 'package:awesome_fultter/playground/ducafecat_splash_login/common/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 检查帐号输入有效
  bool isUsernameValid = false;
  // 表单
  Widget _buildForm() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 35),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // username or E-Mail
          const Text(
            'Username or E-Mail',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Color(0xff838383),
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            onChanged: (value) {
              setState(() {
                isUsernameValid = value.isNotEmpty && value.length > 6;
              });
            },
            decoration: InputDecoration(
              hintText: '@',
              prefixIcon: Image.asset(
                AssetsImages.userPng,
                width: 23,
                height: 23,
              ),
              suffixIcon: isUsernameValid
                  ? Image.asset(
                      AssetsImages.donePng,
                      width: 24,
                      height: 16,
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 25),

          // Password
          const Text(
            'Password',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Color(0xff838383),
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: '6 digits',
              prefixIcon: Image.asset(
                AssetsImages.passwordPng,
                width: 19,
                height: 26,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget?',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0274BC)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 29),

          // Sign In 按钮
          ButtonWeight(
            text: 'Sign In',
            height: 57,
            onPressed: () {},
          ),
          const SizedBox(height: 15),

          // Don’t have an account? + Sıgn Up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 文字提示
              const Text(
                'Don’t have an account?',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff171717),
                ),
              ),

              // 文字按钮
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sıgn Up',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0274BC),
                  ),
                ),
              ),
            ],
          )
          // end
        ],
      ),
    );
  }

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Image.asset(
            AssetsImages.logoPng,
            width: 60,
            height: 57,
          ),
          const SizedBox(height: 22),

          // 主标题
          const Text(
            'Let’s Sign You In',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),

          // 子标题
          const Text(
            'Welcome back, you’ve been missed!',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Color(0xFFEEEEEE),
            ),
          ),
          const SizedBox(height: 55),

          // 表单
          _buildForm()

          // end
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash,
      body: _buildView(),
    );
  }
}
