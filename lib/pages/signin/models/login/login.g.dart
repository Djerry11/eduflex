// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequestEntity _$$_LoginRequestEntityFromJson(
        Map<String, dynamic> json) =>
    _$_LoginRequestEntity(
      type: json['type'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      openId: json['openId'] as String? ?? '',
      online: json['online'] as int? ?? 1,
    );

Map<String, dynamic> _$$_LoginRequestEntityToJson(
        _$_LoginRequestEntity instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'openId': instance.openId,
      'online': instance.online,
    };
