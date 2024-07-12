import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../widgets/custom_button.dart';
import '../login/login_page.dart';
import '../widgets/auth_text.dart';
import '../widgets/continue_with.dart';
import '../widgets/register_fields.dart';
import '../widgets/title_and_subtitle.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController registerEmailController;
  late final TextEditingController registerPasswordController;
  late final TextEditingController registerConfirmPasswordController;

  @override
  void initState() {
    registerEmailController = TextEditingController();
    registerPasswordController = TextEditingController();
    registerConfirmPasswordController = TextEditingController();
    super.initState();
  }

  // Save register credentials to phone local
  Future<void> _saveCredentials() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setString('email', registerEmailController.text);
    await sharedPreferences.setString(
        'password', registerPasswordController.text);
  }

  // Go to Login page
  void _goToLoginPage() => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginPage(),
        ),
      );

  // Show error alert message
  void _showErrorBox() => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password must be equal'),
        ),
      );

  // Check input validation
  bool get isValidate =>
      registerPasswordController.text == registerConfirmPasswordController.text;

  // Tap to register button
  void _register() async {
    log('Email: ${registerEmailController.text}');
    log('Password: ${registerPasswordController.text}');
    log('Confim password: ${registerConfirmPasswordController.text}');
    if (isValidate) {
      await _saveCredentials();
      _goToLoginPage();
      return;
    }
    _showErrorBox();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleAndSubtitle(
              title: 'Create Account',
              subTitle:
                  'Create an account so you can explore all the existing jobs',
            ),
            RegisterFields(
              registerEmailController: registerEmailController,
              registerPasswordController: registerPasswordController,
              registerConfirmPasswordController:
                  registerConfirmPasswordController,
            ),
            const SizedBox(height: 40),
            CustomButton(
              buttonName: 'Sign up',
              onPressed: () => _register(),
            ),
            const SizedBox(height: 34),
            const AuthText(authText: 'Already have an account'),
            const SizedBox(height: 100),
            const ContinueWith()
          ],
        ),
      ),
    );
  }
}
