import 'package:json_annotation/json_annotation.dart';
part 'login_req_dto.g.dart';

@JsonSerializable()
class LoginReqDto {
  final String username;
  final String password;

  LoginReqDto({required this.username, required this.password});

  Map<String, dynamic> toJson() => _$LoginReqDtoToJson(this);
}
