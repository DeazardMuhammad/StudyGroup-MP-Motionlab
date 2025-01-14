import 'package:flutter/material.dart'; // Tambahkan ini
import 'package:get/get.dart';
import '../../home/views/home_view.dart';
import '../../register/views/register_view.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController(); 
  final passwordController = TextEditingController();

  void login() {
    
    Get.to(() => const HomeScreen());
  }

  void navigateToRegister() {
    Get.to(() => const RegisterPage());
  }

  @override
  void onClose() {
    // buat bersihin controller saat tidak lagi digunakan
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
