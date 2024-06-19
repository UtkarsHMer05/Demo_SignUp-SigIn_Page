import 'package:flutter/material.dart';
import 'package:music_listening_app/core/theme/theme.dart';
import 'package:music_listening_app/features/auth/view/pages/login_page.dart';
import 'package:music_listening_app/features/auth/view/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
