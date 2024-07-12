import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NextButton extends StatelessWidget {
  const NextButton({
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              log('$currentPage');
              pageController.jumpToPage(currentPage + 1);
              AnimatedSmoothIndicator(
                activeIndex: currentPage,
                count: IntroDatas.datas.length,
              );
            },
            child: const Text(
              'NEXT',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
