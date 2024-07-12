import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../widgets/custom_button.dart';
import '../../home/home_page.dart';
import '../widgets/auth_text.dart';
import '../widgets/continue_with.dart';
import '../widgets/login_fields.dart';
import '../widgets/title_and_subtitle.dart';
import 'widgets/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController loginEmailController;
  late final TextEditingController loginPasswordController;
  String? registerEmail;
  String? registerPassword;

  @override
  void initState() {
    loginEmailController = TextEditingController();
    loginPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
    super.dispose();
  }

  // Get saved local data from phone
  Future<void> _getSavedCredentials() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    registerEmail = sharedPreferences.getString('email');
    registerPassword = sharedPreferences.getString('password');
  }

  void _goToHomePage() => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
      );

  void _showErrorBox() => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('email or password is incorrect'),
        ),
      );

  bool get _isValidate =>
      registerEmail == loginEmailController.text &&
      registerPassword == loginPasswordController.text;

  void _checkValidation() {
    if (_isValidate) {
      _goToHomePage();
      return;
    }
    _showErrorBox();
  }

  void _login() async {
    log('Saved Email: $registerEmail');
    log('Saved Password: $registerPassword');
    log('Email: ${loginEmailController.text}');
    log('Password: ${loginPasswordController.text}');
    await _getSavedCredentials();
    _checkValidation();
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
              title: 'Login here',
              subTitle: 'Welcome back you\'ve ben missed!',
            ),
            const SizedBox(height: 45),
            LoginFields(
              loginEmailController: loginEmailController,
              loginPasswordController: loginPasswordController,
            ),
            const SizedBox(height: 25),
            const ForgotPassword(),
            const SizedBox(height: 25),
            CustomButton(
              buttonName: 'Sign in',
              onPressed: () => _login(),
            ),
            const SizedBox(height: 34),
            const AuthText(authText: 'Create new account'),
            const SizedBox(height: 100),
            const ContinueWith()
          ],
        ),
      ),
    );
  }
}
