import 'package:get/get.dart';

const host = "http://172.16.20.79:3000/api";

class UserProvider extends GetConnect {
  // 로그인
  Future<Response> login(Map data) => post("$host/user/login", data);
}
