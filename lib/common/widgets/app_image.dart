import 'package:flutter/material.dart';

Widget appimage(
    {String imagePath = 'assets/icons/user.png',
    double width = 22,
    double height = 22}) {
  return SizedBox(
    width: width,
    height: height,
    child: Image.asset(imagePath),
  );
}
