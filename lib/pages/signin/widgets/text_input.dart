import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/utils/colors.dart';

class TextInput extends StatefulWidget {
  final String title;
  final String imagePath;
  final Function(String)? onPressed;
  const TextInput({
    required this.title,
    required this.imagePath,
    this.onPressed,
    super.key,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: AppColors.primaryThreeElementText,
              fontFamily: 'Avenir',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: 320.w,
            height: 50.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black26,
              ),
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primarySecondaryBackground,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  height: 25.h,
                  width: 25.w,
                  child: Image.asset(
                    widget.imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    controller: _textController,
                    obscureText: widget.title == 'Password' ||
                            widget.title == 'Confirm Password'
                        ? true
                        : false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your ${widget.title}',
                      hintStyle: const TextStyle(
                        color: AppColors.primaryThreeElementText,
                      ),
                    ),
                    onChanged: (value) {
                      //    print('vaueooo : ${_textController.text}');
                      widget.onPressed!(_textController.text);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
