import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required String email,
    required String password,
  }) = _SignInState;

  //initialize
  factory SignInState.initialize() => const SignInState(
        email: '',
        password: '',
      );
}
