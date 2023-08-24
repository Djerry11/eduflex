import 'package:eduflex/common/utils/colors.dart';
import 'package:eduflex/common/widgets/textwidget.dart';
import 'package:eduflex/pages/signin/widgets/signin_widgets.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              //thirdpary login
              thirdPartyLogin(),
              const SizedBox(
                height: 20,
              ),
              textWidget(
                text: 'Login with your registered email',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryThreeElementText,
              ),
              const SizedBox(
                height: 20,
              ),
              //email input
              appTextField('Email', 'assets/icons/user.png'),
              //password input
              appTextField('Password', 'assets/icons/lock.png'),
            ],
          ),
        ),
      ),
    );
  }
}
