import 'package:dots_indicator/dots_indicator.dart';
import 'package:eduflex/pages/welcome/boarding_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Consumer(builder: (context, ref, child) {
            return PageView(
              controller: _pageController,
              onPageChanged: (index) {
                ref.read(indexProvider.notifier).state = index;
              },
              children: [
                OnBoardingPage(
                  index: 0,
                  controller: _pageController,
                  title: 'Welcome to Eduflex',
                  imagePath: 'assets/images/reading.png',
                  subTitle: 'Explore, connect, and expand your horizons',
                  buttonTitle: 'Get Started',
                ),
                OnBoardingPage(
                  index: 1,
                  controller: _pageController,
                  title: 'Connect With Everyone',
                  imagePath: 'assets/images/man.png',
                  subTitle:
                      'Your gateway to an exciting world of learning and discovery.',
                  buttonTitle: 'Next',
                ),
                OnBoardingPage(
                  index: 2,
                  controller: _pageController,
                  title: 'Welcome',
                  imagePath: 'assets/images/boy.png',
                  subTitle: 'Lets Go!',
                  buttonTitle: 'Login',
                ),
              ],
            );
          }),
          Consumer(builder: (context, ref, child) {
            final index = ref.watch(indexProvider);
            return Positioned(
              bottom: 50,
              child: DotsIndicator(
                  position: index,
                  dotsCount: 3,
                  decorator: const DotsDecorator(
                    spacing: EdgeInsets.only(left: 10),
                    activeColor: Colors.deepPurple,
                    activeSize: Size(25, 10),
                    size: Size(15, 10),
                    color: Colors.grey,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  )),
            );
          })
        ],
      ),
    );
  }
}
