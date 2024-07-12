import 'package:flutter/material.dart';
import 'package:introduction/pages/auth/register/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LetsGoButton extends StatelessWidget {
  const LetsGoButton({
    super.key,
    required this.pageController,
    required this.currentPage,
  });
  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              pageController.jumpToPage(currentPage - 1);
            },
            child: const Text(
              'PREVIOUS',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              await sharedPreferences.setBool('intro', true);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const RegisterPage(),
                ),
              );
            },
            child: const Text(
              'LETS\' GO!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
