import 'package:eduflex/common/utils/global_loader.dart';
import 'package:eduflex/common/utils/toast_message.dart';
import 'package:eduflex/main.dart';
import 'package:eduflex/pages/signup/notifier/register.dart';
import 'package:eduflex/pages/signup/notifier/register_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpController {
  late WidgetRef ref;
  SignUpController(this.ref);

  //handle the authenticatoin process
  void handleSignup() async {
    RegisterState registerUser = ref.read(registerProvider);

    //check for the empty fields
    if (registerUser.email.isEmpty ||
        registerUser.password.isEmpty ||
        registerUser.rePassword.isEmpty ||
        registerUser.username.isEmpty) {
      showMessage('Please fill up all fields');

      //check if the password and confirm password match
    } else if (registerUser.password != registerUser.rePassword) {
      showMessage('Password do not match');
    } else {
      //show the starting message
      showMessage('Starting signup ...');

      //start the signup process backend operation
      try {
        //sset the loading state
        ref.read(appLoaderProvider.notifier).toggleLoader();

        //get the credentials from firebase
        final cred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: registerUser.email, password: registerUser.password);

        //print the credentials
        if (kDebugMode) {
          print('Signup credentials: $cred');
        }

        //if user exits send verification email
        if (cred.user != null) {
          //send the email verification if valid
          await cred.user!.sendEmailVerification();
          await cred.user!.updateDisplayName(registerUser.username);

          //display email verification message
          showMessage("An email has been sent to ${cred.user!.email}");
          Future.delayed(const Duration(seconds: 1), () {
            //delete the form
            ref.read(registerProvider.notifier).disposeState();
            //navigate to the signin screen
            navigatorKey.currentState!.pushReplacementNamed('/SignIn');
          });
          //navigatorKey.currentState!.pop();
        } else {
          //display invalid email message
          showMessage('Email Not found ');
        }

        //pop the screen after 2 seconds

        //display the error message
      } catch (err) {
        showMessage(err.toString());
      }
      //reset the loading state
      ref.read(appLoaderProvider.notifier).toggleLoader();
    }
  }
}
