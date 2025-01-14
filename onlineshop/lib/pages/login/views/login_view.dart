import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/reusable_widget.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/loginMotion.json',
              height: 200,
            ),
            Text(
              'Welcome!',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Happy Shopping All',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            ReusableTextField(
              hintText: 'Email',
              controller: controller.emailController,
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 10),
            ReusableTextField(
              hintText: 'Password',
              controller: controller.passwordController,
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ReusableButton(
                buttonText: 'Login',
                onPressed: controller.login,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: controller.navigateToRegister,
              child: Text(
                "Don't have an account? Register",
                style: GoogleFonts.poppins(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
