import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class LoginRequestEntity with _$LoginRequestEntity {
  const factory LoginRequestEntity({
    @Default(0) int? type,
    @Default('') String? name,
    @Default('') String? description,
    @Default('') String? email,
    @Default('') String? phone,
    @Default('') String? avatar,
    @Default('') String? openId,
    @Default(1) int? online,
  }) = _LoginRequestEntity;

  factory LoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestEntityFromJson(json);
}
