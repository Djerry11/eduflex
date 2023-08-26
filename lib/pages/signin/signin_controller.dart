import 'package:eduflex/common/utils/constant.dart';
import 'package:eduflex/common/utils/global_loader.dart';
import 'package:eduflex/common/utils/toast_message.dart';
import 'package:eduflex/global.dart';
import 'package:eduflex/main.dart';
import 'package:eduflex/pages/signin/models/login/login.dart';
import 'package:eduflex/pages/signin/models/signin_notifier.dart';
import 'package:eduflex/pages/signup/notifier/register_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInController {
  late WidgetRef ref;
  SignInController(this.ref);

  void handleLogin() async {
    //show the loading screen
    ref.read(appLoaderProvider.notifier).toggleLoader();

    //
    final userEntry = ref.read(signInProvider);
    final email = userEntry.email;
    final password = userEntry.password;

    if (kDebugMode) {
      print('UserEntry : $userEntry');
    }

    //
    if (email.isEmpty || password.isEmpty) {
      showMessage('Please fill up all fields');
      ref.read(appLoaderProvider.notifier).toggleLoader();
      return;
    }

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      //
      final currentUser = FirebaseAuth.instance.currentUser;
      if (kDebugMode) {
        print(currentUser);
      }
      //
      if (currentUser != null) {
        if (currentUser.emailVerified) {
          //show the message
          showMessage('Login Successful');
          //delete the form
          ref.read(registerProvider.notifier).disposeState();
          //delay screen for 2 seconds loading

          //set the user details
          String? displayName = currentUser.displayName;
          String? email = currentUser.email;
          String? photoUrl = currentUser.photoURL;
          String? uid = currentUser.uid;

          //
          LoginRequestEntity loginRequestEntity = const LoginRequestEntity();
          loginRequestEntity = loginRequestEntity.copyWith(
            type: 1,
            openId: uid,
            name: displayName,
            email: email,
            avatar: photoUrl,
          );

          //store the data to the local storage
          asyncPostAllData(loginRequestEntity);

          //navigate to the  home screen
        } else {
          //delay screen for 2 seconds loading
          showMessage('Please verify your email');
        }
      }
    } catch (err) {
      showMessage(err.toString());
    }

    ref.read(appLoaderProvider.notifier).toggleLoader();
  }

  //
  void asyncPostAllData(LoginRequestEntity loginRequestEntity) {
    //talk to the server
    //store data to the local storage

    try {
      Global.storageService.setString(AppConstant.SERVER_API_URL, '23434');
      Global.storageService
          .setString(AppConstant.STORAGE_USER_TOKEN_KEY, 'value');

      //
      navigatorKey.currentState!
          .pushNamedAndRemoveUntil('/home', (route) => false);

      //clear the form data
      ref.read(signInProvider.notifier).disposeState();
    } catch (err) {
      showMessage(err.toString());
    }
    //redierct to the new page
  }
}
