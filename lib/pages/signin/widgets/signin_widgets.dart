import 'package:eduflex/common/utils/colors.dart';
import 'package:eduflex/common/widgets/app_image.dart';
import 'package:eduflex/common/widgets/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar({String title = 'Log In'}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Center(
      child: textWidget(
        text: title,
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
    padding: const EdgeInsets.only(top: 20, bottom: 20),
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
      width: 44.w,
      height: 44.h,
      child: Image.asset(imagePath),
    ),
  );
}

Widget appTextField(String title, String imagePath) {
  return Container(
    width: 499.w,
    color: Colors.amberAccent,
    height: 60.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: AppColors.primaryThreeElementText),
        ),
        Container(
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
                appimage(
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
