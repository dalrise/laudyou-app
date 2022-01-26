import 'package:json_annotation/json_annotation.dart';
part 'login_req_dto.g.dart';

@JsonSerializable()
class LoginReqDto {
  final String username;
  final String password;

  LoginReqDto(this.username, this.password);

  Map<String, dynamic> toJson() => _$LoginReqDtoToJson(this);
}
