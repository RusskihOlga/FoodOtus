// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserJson _$$_UserJsonFromJson(Map<String, dynamic> json) => _$_UserJson(
      id: json['id'] as int,
      login: json['login'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserJsonToJson(_$_UserJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'password': instance.password,
      'token': instance.token,
      'avatar': instance.avatar,
    };
