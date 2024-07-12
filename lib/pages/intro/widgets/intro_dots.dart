import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroDots extends StatelessWidget {
  const IntroDots({
    super.key,
    required this.currentPage,
    required this.pageController,
  });
  final int currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentPage,
      count: IntroDatas.datas.length,
      duration: Durations.medium1,
    );

    // Padding(
    //   padding: const EdgeInsets.only(bottom: 20),
    // child: SmoothPageIndicator(
    //   controller: pageController,
    //   count: IntroDatas.datas.length,
    //   effect: const WormEffect(
    //     dotHeight: 16,
    //     dotWidth: 16,
    //     type: WormType.thin,
    //   ),
    // ),
    // );

    // Padding(
    //   padding: const EdgeInsets.only(bottom: 20),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       for (int i = 0; i < IntroDatas.datas.length; i++)
    //         Padding(
    //           padding: const EdgeInsets.all(2.0),
    //           child: SizedBox(
    //             width: 15,
    //             height: 15,
    //             child: DecoratedBox(
    //               decoration: BoxDecoration(
    //                 shape: BoxShape.circle,
    //                 color: currentPage == i ? Colors.green : Colors.grey,
    //               ),
    //             ),
    //           ),
    //         ),
    //     ],
    //   ),
    // );
  }
}
