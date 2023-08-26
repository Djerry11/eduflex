import 'package:eduflex/common/utils/global_loader.dart';
import 'package:eduflex/common/widgets/dummy_button.dart';
import 'package:eduflex/common/widgets/textwidget.dart';

import 'package:eduflex/pages/signin/widgets/signin_widgets.dart';
import 'package:eduflex/pages/signin/widgets/text_input.dart';

import 'package:eduflex/pages/signup/notifier/register_notifier.dart';
import 'package:eduflex/pages/signup/notifier/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: 'Sign Up'),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Consumer(builder: (context, ref, child) {
              final loader = ref.watch(appLoaderProvider);
              return loader == true
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),

                        Align(
                            alignment: Alignment.center,
                            child: textWidget(
                                text: 'Enter your details to continue',
                                fontSize: 18)),

                        SizedBox(
                          height: 20.h,
                        ),

                        //username input
                        TextInput(
                          onPressed: (value) {
                            ref
                                .read(registerProvider.notifier)
                                .setUsername(value);
                          },
                          title: 'Username',
                          imagePath: 'assets/icons/person.png',
                        ),

                        //email input
                        TextInput(
                          onPressed: (value) {
                            ref.read(registerProvider.notifier).setEmail(value);
                          },
                          title: 'Email',
                          imagePath: 'assets/icons/person2.png',
                        ),

                        //password input
                        TextInput(
                          onPressed: (value) {
                            ref
                                .read(registerProvider.notifier)
                                .setPassword(value);
                          },
                          title: 'Password',
                          imagePath: 'assets/icons/lock.png',
                        ),

                        //confirm password input
                        SizedBox(
                          height: 20.h,
                        ),
                        TextInput(
                          onPressed: (value) {
                            ref
                                .read(registerProvider.notifier)
                                .setConfirmPassword(value);
                          },
                          title: 'Confirm Password',
                          imagePath: 'assets/icons/lock.png',
                        ),
                        const Spacer(
                          flex: 1,
                        ),

                        //signup button
                        DummyButton(
                          onPressed: () async {
                            SignUpController(ref).handleSignup();
                          },
                          title: 'Sign Up',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        const Spacer(
                          flex: 2,
                        ),
                      ],
                    );
            }),
          ),
        ),
      ),
    );
  }
}
