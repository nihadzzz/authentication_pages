import 'package:flutter/material.dart';
import 'package:introduction/widgets/custom_input.dart';

class RegisterFields extends StatelessWidget {
  const RegisterFields({
    super.key,
    required this.registerEmailController,
    required this.registerPasswordController,
    required this.registerConfirmPasswordController,
  });
  
  final TextEditingController registerEmailController;
  final TextEditingController registerPasswordController;
  final TextEditingController registerConfirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          CustomInput(
            textHint: 'Email',
            inputController: registerEmailController,
          ),
          const SizedBox(height: 20),
          CustomInput(
            textHint: 'Password',
            inputController: registerPasswordController,
          ),
          const SizedBox(height: 20),
          CustomInput(
            textHint: 'Confirm Password',
            inputController: registerConfirmPasswordController,
          )
        ],
      ),
    );
  }
}
