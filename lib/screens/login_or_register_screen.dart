import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  State<LoginOrRegisterScreen> createState() => _LoginOrRegisterScreenState();
}

class _LoginOrRegisterScreenState extends State<LoginOrRegisterScreen> {
  bool _isLoginScreen = true;

  void _toggleScreens() {
    setState(() {
      _isLoginScreen = !_isLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login or Register'),
        automaticallyImplyLeading: false, // Remove the back arrow
      ),
      body: Center(
        child: SizedBox(
          // Add SizedBox to constrain the Column's height
          height: 300, // Adjust the height as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_isLoginScreen)
                const LoginScreen()
              else
                const RegisterScreen(),
              const SizedBox(height: 20),
              if (_isLoginScreen)
                TextButton(
                  onPressed: _toggleScreens,
                  child: const Text('Not a member? Register now'),
                )
              else
                TextButton(
                  onPressed: _toggleScreens,
                  child: const Text('Already have an account? Login now'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
