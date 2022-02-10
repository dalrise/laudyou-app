import 'package:get/get.dart';
import 'package:laudyou_app/domain/user/user.dart';
import 'package:laudyou_app/domain/user/user_repository.dart';
import 'package:laudyou_app/utils/auth_util.dart';
import 'package:laudyou_app/view/page/post/home_page.dart';
import 'package:laudyou_app/view/page/user/login_page.dart';

import 'dto/user/login_res_dto.dart';

enum UserLoginStatus { NotLoggedIn, Authenticating, LoggedIn }

enum UserType {
  self,
  parent,
}

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs;
  final Rx<UserType> userType = Rx<UserType>(UserType.self);

  void goLogin() {
    Get.to(() => LoginPage());
  }

  void goLogout() {
    Get.to(() => HomePage());
    setJwtToken("");
    isLogin.value = false;
  }

  Future<void> me() async {
    try {
      LoginResDto? loginResDto = await _userRepository.me();
      if (loginResDto != null) {
        print("me 로그인 성공!!!!");
        isLogin.value = true;
        //setJwtToken(loginResDto.token);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<LoginResDto?> login(String username, String password) async {
    LoginResDto? loginResDto = await _userRepository.login(username, password);

    if (loginResDto != null) {
      print("로그인 성공!!!!");
      isLogin.value = true;
      setJwtToken(loginResDto.token);
    }
    return loginResDto;
  }

  Future<LoginResDto?> join(String username, String email, String password,
      String recommendCode, bool isPushEmail) async {
    final user = User(
        id: 0,
        username: username,
        password: password,
        email: email,
        recommendCode: recommendCode,
        isPushEmail: isPushEmail);

    LoginResDto loginResDto = await _userRepository.join(user);

    //User(username, email, password, recommendCode, isRecomendCode);
  }
}
