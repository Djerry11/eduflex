import 'package:eduflex/pages/signup/notifier/register.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_notifier.g.dart';

@Riverpod(keepAlive: true)
class Register extends _$Register {
  @override
  RegisterState build() {
    return const RegisterState();
  }

  void disposeState() {
    state = const RegisterState();
  }

  void setUsername(String username) {
    state = state.copyWith(username: username);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setConfirmPassword(String repassword) {
    state = state.copyWith(rePassword: repassword);
  }
}
