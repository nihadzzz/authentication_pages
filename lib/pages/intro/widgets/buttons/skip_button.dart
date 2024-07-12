import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';
import 'package:introduction/pages/auth/register/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.currentPage,
    required PageController pageController,
  });
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (currentPage == IntroDatas.datas.length - 1)
            const SizedBox(
              height: 48,
            )
          else
            TextButton(
              onPressed: () async {
                SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                await sharedPreferences.setBool('intro', true).then(
                      (value) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RegisterPage(),
                        ),
                      ),
                    );
              },
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
        ],
      ),
    );
  }
}
