// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestEntity _$LoginRequestEntityFromJson(Map<String, dynamic> json) {
  return _LoginRequestEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestEntity {
  int? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get openId => throw _privateConstructorUsedError;
  int? get online => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestEntityCopyWith<LoginRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestEntityCopyWith<$Res> {
  factory $LoginRequestEntityCopyWith(
          LoginRequestEntity value, $Res Function(LoginRequestEntity) then) =
      _$LoginRequestEntityCopyWithImpl<$Res, LoginRequestEntity>;
  @useResult
  $Res call(
      {int? type,
      String? name,
      String? description,
      String? email,
      String? phone,
      String? avatar,
      String? openId,
      int? online});
}

/// @nodoc
class _$LoginRequestEntityCopyWithImpl<$Res, $Val extends LoginRequestEntity>
    implements $LoginRequestEntityCopyWith<$Res> {
  _$LoginRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? openId = freezed,
    Object? online = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      openId: freezed == openId
          ? _value.openId
          : openId // ignore: cast_nullable_to_non_nullable
              as String?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginRequestEntityCopyWith<$Res>
    implements $LoginRequestEntityCopyWith<$Res> {
  factory _$$_LoginRequestEntityCopyWith(_$_LoginRequestEntity value,
          $Res Function(_$_LoginRequestEntity) then) =
      __$$_LoginRequestEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? type,
      String? name,
      String? description,
      String? email,
      String? phone,
      String? avatar,
      String? openId,
      int? online});
}

/// @nodoc
class __$$_LoginRequestEntityCopyWithImpl<$Res>
    extends _$LoginRequestEntityCopyWithImpl<$Res, _$_LoginRequestEntity>
    implements _$$_LoginRequestEntityCopyWith<$Res> {
  __$$_LoginRequestEntityCopyWithImpl(
      _$_LoginRequestEntity _value, $Res Function(_$_LoginRequestEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? openId = freezed,
    Object? online = freezed,
  }) {
    return _then(_$_LoginRequestEntity(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      openId: freezed == openId
          ? _value.openId
          : openId // ignore: cast_nullable_to_non_nullable
              as String?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequestEntity implements _LoginRequestEntity {
  const _$_LoginRequestEntity(
      {this.type = 0,
      this.name = '',
      this.description = '',
      this.email = '',
      this.phone = '',
      this.avatar = '',
      this.openId = '',
      this.online = 1});

  factory _$_LoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestEntityFromJson(json);

  @override
  @JsonKey()
  final int? type;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final String? avatar;
  @override
  @JsonKey()
  final String? openId;
  @override
  @JsonKey()
  final int? online;

  @override
  String toString() {
    return 'LoginRequestEntity(type: $type, name: $name, description: $description, email: $email, phone: $phone, avatar: $avatar, openId: $openId, online: $online)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestEntity &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.openId, openId) || other.openId == openId) &&
            (identical(other.online, online) || other.online == online));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, description, email,
      phone, avatar, openId, online);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestEntityCopyWith<_$_LoginRequestEntity> get copyWith =>
      __$$_LoginRequestEntityCopyWithImpl<_$_LoginRequestEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestEntityToJson(
      this,
    );
  }
}

abstract class _LoginRequestEntity implements LoginRequestEntity {
  const factory _LoginRequestEntity(
      {final int? type,
      final String? name,
      final String? description,
      final String? email,
      final String? phone,
      final String? avatar,
      final String? openId,
      final int? online}) = _$_LoginRequestEntity;

  factory _LoginRequestEntity.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestEntity.fromJson;

  @override
  int? get type;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get avatar;
  @override
  String? get openId;
  @override
  int? get online;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestEntityCopyWith<_$_LoginRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
