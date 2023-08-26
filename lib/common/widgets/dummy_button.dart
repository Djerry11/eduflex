import 'package:eduflex/common/utils/colors.dart';
import 'package:eduflex/common/widgets/textwidget.dart';
import 'package:flutter/material.dart';

class DummyButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const DummyButton({
    this.onPressed,
    this.title = 'Log In',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 320,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: title != 'Register'
                ? const Color.fromARGB(255, 64, 204, 129)
                : Colors.black26,
          ),
          child: Center(
            child: textWidget(
              text: title,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryText,
            ),
          ),
        ),
      ),
    );
  }
}
