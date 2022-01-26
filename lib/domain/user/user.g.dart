// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['id'] as int,
      json['username'] as String,
      json['password'] as String,
      json['email'] as String,
      DateTime.parse(json['created'] as String),
      DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };
