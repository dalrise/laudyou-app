import 'package:get/get_connect/http/src/response/response.dart';
import 'package:laudyou_app/controller/dto/user/login_req_dto.dart';
import 'package:laudyou_app/domain/user/user_prodivder.dart';

import 'user.dart';

class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<String?> login(String username, String password) async {
    LoginReqDto dto = LoginReqDto(username, password);
    //print(dto.toJson());
    Response response = await _userProvider.login(dto.toJson());

    if (response.headers == null) {
      print("response.headers is null");
      return null;
    }
    String? token = response.headers!["authorization"];
    return token;
  }
}
