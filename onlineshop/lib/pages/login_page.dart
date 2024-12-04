import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/reusable_widget.dart';
import 'register_page.dart';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView(
//           children: [
//             // Load a Lottie file from your assets
//             Lottie.asset('assets/images/Animation - 1733313646874.json'),
//             Text(
//               'Login',
//               textAlign: TextAlign.center,
//               style: GoogleFonts.roboto(
//                 textStyle: Theme.of(context).textTheme.displayLarge,
//                 fontSize: 25,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }

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
                // Tambahkan logika login Anda di sini
              },
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
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
