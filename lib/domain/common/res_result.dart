import 'package:json_annotation/json_annotation.dart';

part 'res_result.g.dart';

@JsonSerializable()
class ResResult {
  final int code;
  final String message;
  final dynamic data;

  ResResult({required this.code, required this.message, this.data});

  factory ResResult.fromJson(Map<String, dynamic> json) =>
      _$ResResultFromJson(json);
}
