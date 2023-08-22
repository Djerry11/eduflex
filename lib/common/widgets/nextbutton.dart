import 'package:flutter/material.dart';

Widget nextbutton({
  required String title,
  required int index,
  required PageController controller,
}) {
  return InkWell(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index + 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linearToEaseOut);
      }
    },
    child: Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 65, 61, 71).withOpacity(0.8),
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
