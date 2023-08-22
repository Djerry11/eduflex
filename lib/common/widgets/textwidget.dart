import 'package:eduflex/common/utils/colors.dart';
import 'package:flutter/material.dart';

Widget textWidget({
  Color color = AppColors.primaryText,
  String text = '',
  double fontSize = 24,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontFamily: 'Avenir',
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
