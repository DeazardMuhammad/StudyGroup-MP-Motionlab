import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/reusable_widget.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/login_animation.json',
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
              controller: emailController,
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 10),
            ReusableTextField(
              hintText: 'Password',
              controller: passwordController,
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ReusableButton(
              buttonText: 'Login',
              onPressed: () {
                // nanti ke home
              },
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(), // biar ngarahin ke register
                  ),
                );
              },
              child: Text(
                "Don't have an account? Register",
                style: GoogleFonts.poppins(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
