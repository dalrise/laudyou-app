import 'package:get/get.dart';
import 'package:laudyou_app/domain/common/res_result.dart';
import 'package:laudyou_app/domain/user/user.dart';
import 'package:laudyou_app/domain/user/user_repository.dart';
import 'package:laudyou_app/models/login_info.dart';
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
  // 로그인 사용자 정보를 담고 있음
  final Rx<LoginInfo> loginInfo = LoginInfo(id: 0, name: '', email: '').obs;

  void goLogin() {
    Get.to(() => LoginPage());
  }

  void _setUser(
      {required int id, required String name, required String email}) {
    loginInfo.update((val) {
      if (val != null) {
        val.id = id;
        val.name = name;
        val.email = email;
      }
    });
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
        User user = loginResDto.user;
        _setUser(id: user.id, name: user.username, email: user.email!);
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
      User user = loginResDto.user;
      _setUser(id: user.id, name: user.username, email: user.email!);

      setJwtToken(loginResDto.token);
    }
    return loginResDto;
  }

  bool logout() {
    bool result = false;
    try {
      // todo logout url 처리
      _userRepository.logout();
    } catch (e) {}

    isLogin.value = false;
    setJwtToken("");

    return result;
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

  Future<ResResult?> changePassword(
      String currentPassword, String password) async {
    return await _userRepository.changePassword(currentPassword, password);
  }
}
