import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';

class IntroTexts extends StatelessWidget {
  const IntroTexts({
    super.key,
    required this.intro,
  });
  final IntroDatas intro;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60, top: 35),
      child: Column(
        children: [
          Text(
            intro.title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),
          Text(
            intro.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
