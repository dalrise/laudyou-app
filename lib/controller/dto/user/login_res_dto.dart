import 'package:json_annotation/json_annotation.dart';
import 'package:laudyou_app/domain/user/user.dart';
part 'login_res_dto.g.dart';

@JsonSerializable()
class LoginResDto {
  final User user;
  final String token;

  LoginResDto({required this.user, required this.token});

  factory LoginResDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResDtoToJson(this);
}
