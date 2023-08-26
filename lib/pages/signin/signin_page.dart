import 'package:eduflex/common/utils/colors.dart';
import 'package:eduflex/common/utils/global_loader.dart';

import 'package:eduflex/common/widgets/dummy_button.dart';
import 'package:eduflex/common/widgets/textwidget.dart';
import 'package:eduflex/pages/signin/signin_controller.dart';
import 'package:eduflex/pages/signin/models/signin_notifier.dart';
import 'package:eduflex/pages/signin/widgets/signin_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/text_input.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Consumer(builder: (context, ref, child) {
              final loader = ref.watch(appLoaderProvider);
              return loader == true
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),

                        // thirdpary loging
                        thirdPartyLogin(),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: textWidget(
                            text: 'Or Continue with your email',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryThreeElementText,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //email input
                        TextInput(
                          onPressed: (value) {
                            ref.read(signInProvider.notifier).setEmail(value);
                          },
                          title: 'Email',
                          imagePath: 'assets/icons/person.png',
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //password input
                        TextInput(
                          onPressed: (value) {
                            ref
                                .read(signInProvider.notifier)
                                .setPassword(value);
                          },
                          title: 'Password',
                          imagePath: 'assets/icons/lock.png',
                        ),
                        const Spacer(
                          flex: 2,
                        ),

                        //login button
                        DummyButton(
                          onPressed: () {
                            SignInController(ref).handleLogin();
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DummyButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/SignUp');
                          },
                          title: 'Register',
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
