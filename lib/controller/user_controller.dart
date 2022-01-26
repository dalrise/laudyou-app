import 'dart:ffi';

import 'package:get/get.dart';
import 'package:laudyou_app/domain/user/user_repository.dart';
import 'package:laudyou_app/utils/auth_util.dart';
import 'package:laudyou_app/view/page/post/home_page.dart';
import 'package:laudyou_app/view/page/user/login_page.dart';

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs;

  void goLogin() {
    Get.to(() => LoginPage());
  }

  void goLogout() {
    Get.to(() => HomePage());
    setJwtToken("");
    isLogin.value = false;
  }

  Future<String?> login(String username, String password) async {
    String? token = await _userRepository.login(username, password);
    if (token != null) {
      isLogin.value = true;
      setJwtToken(token);
    }
    return token;
  }
}
