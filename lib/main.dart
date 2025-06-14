import 'package:flutter/material.dart';
import 'package:flutter_assignment_y4_s1/core/configs/theme/app_theme.dart';
import 'package:flutter_assignment_y4_s1/presentation/splash/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
