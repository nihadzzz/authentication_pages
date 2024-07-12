import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';
import 'package:introduction/pages/intro/widgets/buttons/lets_go_button.dart';
import 'package:introduction/pages/intro/widgets/buttons/previous_and_next_button.dart';

class IntroButtons extends StatelessWidget {
  const IntroButtons({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return currentPage == IntroDatas.datas.length - 1
        ? LetsGoButton(
            pageController: pageController,
            currentPage: currentPage,
          )
        : PreviousAndNextButtons(
            pageController: pageController,
            currentPage: currentPage,
          );
  }
}
