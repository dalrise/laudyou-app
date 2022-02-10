import 'package:get/get_connect/http/src/response/response.dart';
import 'package:laudyou_app/controller/dto/user/login_req_dto.dart';
import 'package:laudyou_app/controller/dto/user/login_res_dto.dart';
import 'package:laudyou_app/domain/user/user_prodivder.dart';

import 'user.dart';

class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<LoginResDto?> login(String username, String password) async {
    LoginReqDto dto = LoginReqDto(username, password);
    //print(dto.toJson());
    final response = await _userProvider.login(dto.toJson());
    if (response.status.hasError) {
      return Future.error(response.statusText ?? "error");
    }

    LoginResDto loginResDto = LoginResDto.fromJson(response.body);
    return loginResDto;

    /*
    print(response.body);

    // chrome debug 시 header 와 cors 이슈 있음
    if (response.headers == null) {
      print("response.headers is null");
      return null;
    }
    String? token = response.body.token;
    return token;
     */
  }
}
