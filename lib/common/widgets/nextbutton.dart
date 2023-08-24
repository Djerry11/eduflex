import 'package:flutter/material.dart';

Widget nextbutton({
  required String title,
  required int index,
  required PageController controller,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      if (index < 2) {
        controller.animateToPage(index + 1,
            duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      } else {
        // Navigator.pushReplacement(context,
        //     MaterialPageRoute(builder: (context) => const SignInPage()));
        Navigator.pushNamed(context, '/SignIn');
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
