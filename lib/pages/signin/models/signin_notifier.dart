import 'package:eduflex/pages/signin/models/signin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signin_notifier.g.dart';

@Riverpod(keepAlive: true)
class SignIn extends _$SignIn {
  @override
  SignInState build() {
    return SignInState.initialize();
  }

  void disposeState() {
    state = SignInState.initialize();
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }
}
