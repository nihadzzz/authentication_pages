import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({
    super.key,
    required this.intro,
  });
  final IntroDatas intro;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 350,
      child: Image.asset(intro.image),
    );
  }
}
