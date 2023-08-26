import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String username,
    @Default('') String email,
    @Default('') String password,
    @Default('') String rePassword,
  }) = _RegisterState;
}
