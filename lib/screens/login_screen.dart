import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';
import 'login_or_register_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      // Handle login errors (e.g., wrong credentials, network issues)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login failed: ${e.message}'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Email',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              maxLength: 50, // Add max length
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Password',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              maxLength: 50, // Add max length
              decoration: const InputDecoration(
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: _login,
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Not a member? ',
                    style: const TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Register now',
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
