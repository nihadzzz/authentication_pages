import 'package:flutter/material.dart';
import 'package:introduction/datas/intro_datas.dart';
import 'package:introduction/pages/intro/widgets/intro_buttons.dart';
import 'package:introduction/pages/intro/widgets/intro_dots.dart';
import 'package:introduction/pages/intro/widgets/intro_items.dart';
import 'package:introduction/pages/intro/widgets/buttons/skip_button.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({
    super.key,
  });
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SkipButton(
              pageController: _pageController,
              currentPage: currentPage,
            ),
            Expanded(
              child: ColoredBox(
                color: Colors.transparent,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: IntroDatas.datas.length,
                  itemBuilder: (_, i) {
                    IntroDatas intro = IntroDatas.datas[i];
                    return IntroItems(intro: intro);
                  },
                  onPageChanged: (i) {
                    currentPage = i;
                    setState(() {});
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  IntroDots(
                    currentPage: currentPage,
                    pageController: _pageController,
                  ),
                  IntroButtons(
                    pageController: _pageController,
                    currentPage: currentPage,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
