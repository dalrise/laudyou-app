// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResResult _$ResResultFromJson(Map<String, dynamic> json) => ResResult(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$ResResultToJson(ResResult instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
