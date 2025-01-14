import 'package:flutter/material.dart';
import 'package:pertemuan2/controller/cart_controller.dart';
import 'package:pertemuan2/pages/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
  // final cartController = Get.put(CartController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}