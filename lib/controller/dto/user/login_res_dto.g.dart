// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResDto _$LoginResDtoFromJson(Map<String, dynamic> json) => LoginResDto(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginResDtoToJson(LoginResDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
