import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controllerName =
      TextEditingController(text: 'admin');

  final TextEditingController _controllerPassword = TextEditingController();

  // 管理焦点
  FocusNode focusNodeName = FocusNode();
  FocusNode focusNodePassword = FocusNode();
  FocusNode? focusScopeNode;

  @override
  void dispose() {
    _controllerName.dispose();
    super.dispose();
  }

  // 用户名输入框
  Widget _buildName() {
    return TextField(
      controller: _controllerName,
      autofocus: true,
      focusNode: focusNodeName,
      // 输入框样式
      decoration: const InputDecoration(
        labelText: '用户名',
        hintText: '请输入用户名',
        prefixIcon: Icon(Icons.person),
        suffixIcon: Icon(Icons.edit),
        border: OutlineInputBorder(),
      ),
      // 输入改变
      onChanged: (String value) {
        debugPrint('onChanged 用户名：$value');
      },

      //回车事件
      onSubmitted: (String value) {
        debugPrint('onSubmitted 用户名：$value');
        focusScopeNode ??= FocusScope.of(context);
        focusScopeNode?.requestFocus(focusNodePassword);
      },
    );
  }

  // 秘密输入框
  Widget _buildPassword() {
    return TextField(
      controller: _controllerPassword,
      focusNode: focusNodePassword,
      obscureText: true,
      // 输入框样式
      decoration: const InputDecoration(
        labelText: '密码',
        hintText: '请输入密码',
        prefixIcon: Icon(Icons.password),
        suffixIcon: Icon(Icons.edit),
        border: OutlineInputBorder(),
      ),
      // 输入改变
      onChanged: (String value) {
        debugPrint('onChanged 用户名：$value');
      },

      //回车事件
      onSubmitted: (String value) {
        debugPrint('onSubmitted 用户名：$value');
      },
    );
  }

  // 登陆按钮
  Widget _buildLogin() {
    return ElevatedButton(
      onPressed: () {
        debugPrint('用户名：${_controllerName.text}');
        debugPrint('密码：${_controllerPassword.text}');
      },
      child: const Text('登陆'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('输入框'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              _buildName(),
              const SizedBox(height: 16),
              _buildPassword(),
              const SizedBox(height: 16),
              _buildLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
