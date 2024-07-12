import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:introduction/pages/intro/widgets/buttons/next_button.dart';

class PreviousAndNextButtons extends StatelessWidget {
  const PreviousAndNextButtons({
    super.key,
    required this.pageController,
    required this.currentPage,
  });
  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return currentPage == 0
        ? NextButton(
            pageController: pageController,
            currentPage: currentPage,
          )
        : Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
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
                  onPressed: () {
                    log('$currentPage');
                    pageController.jumpToPage(currentPage + 1);
                  },
                  child: const Text(
                    'NEXT',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                )
              ],
            ),
          );
  }
}
