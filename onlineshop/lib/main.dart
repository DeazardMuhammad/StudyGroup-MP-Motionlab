import 'package:flutter/material.dart';
import 'package:pertemuan2/pages/login_page.dart';

void main() {
  runApp(const LoginPage());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}