import 'package:awesome_fultter/playground/ducafecat_splash_login/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Poppins',
        // primarySwatch: Colors.orange,
      ),
      home: const SplashPage(),
    );
  }
}
