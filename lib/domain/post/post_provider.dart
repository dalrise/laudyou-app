import 'package:get/get.dart';
import 'package:laudyou_app/utils/auth_util.dart';

const host = "http://172.16.20.79:3000/api";

class PostProvider extends GetConnect {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // 로그인
  Future<Response> findAll() async {
    String token = await getJwtToken();
    return get("$host/notice/sample", headers: {"authorization": token});
  }

  Future<Response> findById(id) async {
    String token = await getJwtToken();
    return get("$host/notice/$id", headers: {"authorization": token});
  }
}
