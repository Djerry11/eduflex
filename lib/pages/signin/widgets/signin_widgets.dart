import 'package:eduflex/common/utils/colors.dart';
import 'package:eduflex/common/widgets/appImage.dart';
import 'package:eduflex/common/widgets/textwidget.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Center(
      child: textWidget(
        text: 'Log In',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryText,
      ),
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(4),
      child: Container(
        color: Colors.greenAccent,
        height: 2,
      ),
    ),
  );
}

Widget thirdPartyLogin() {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    margin: const EdgeInsets.symmetric(horizontal: 80),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginIcon('assets/icons/google.png'),
        _loginIcon('assets/icons/facebook.png'),
        _loginIcon('assets/icons/apple.png'),
      ],
    ),
  );
}

Widget _loginIcon(String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 44,
      height: 44,
      child: Image.asset(imagePath),
    ),
  );
}

Widget appTextField(String title, String imagePath) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: AppColors.primaryThreeElementText),
        ),
        Container(
          width: 320,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1),
            color: AppColors.primarySecondaryBackground,
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                appImage(
                  imagePath: imagePath,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your $title',
                    hintStyle: const TextStyle(
                      color: AppColors.primaryThreeElementText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
