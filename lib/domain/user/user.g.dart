// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String?,
      email: json['email'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      recommendCode: json['recommendCode'] as String?,
      isPushEmail: json['isPushEmail'] as bool?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'recommendCode': instance.recommendCode,
      'isPushEmail': instance.isPushEmail,
    };
