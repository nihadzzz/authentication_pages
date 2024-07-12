import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';
import 'package:introduction/pages/intro/widgets/intro_image.dart';
import 'package:introduction/pages/intro/widgets/intro_texts.dart';

class IntroItems extends StatelessWidget {
  const IntroItems({
    super.key,
   required this.intro,
  });
  final IntroDatas intro;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntroImage(intro: intro),
        IntroTexts(intro: intro),
      ],
    );
  }
}
