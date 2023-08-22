import 'package:eduflex/common/utils/colors.dart';
import 'package:eduflex/common/widgets/nextbutton.dart';
import 'package:eduflex/common/widgets/textwidget.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final String buttonTitle;
  final PageController controller;
  final String title;
  final String imagePath;
  final String subTitle;
  final int index;
  final double fontSize;
  const OnBoardingPage(
      {super.key,
      required this.controller,
      required this.buttonTitle,
      required this.index,
      required this.title,
      this.imagePath = '',
      this.subTitle = '',
      this.fontSize = 26});

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Image.asset(
            imagePath,
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(12),
          child: textWidget(text: title, fontSize: fontSize),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: textWidget(
            color: AppColors.primarySecondaryElementText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            text: subTitle,
          ),
        ),
        nextbutton(index: index, controller: controller, title: buttonTitle),
      ],
    );
  }
}
