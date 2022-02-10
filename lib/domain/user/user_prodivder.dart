import 'package:get/get.dart';
import 'package:laudyou_app/domain/user/user.dart';

import '../base/custom_get_connect.dart';

//const host = "http://172.16.20.79:3000/api";
//const host = "http://localhost:3000/api";

class UserProvider extends CustomGetConnect {
  Duration get loginTime => const Duration(milliseconds: 2250);

  // 로그인
  Future<Response> login2(Map data) async {
    final response = await fetchPost("/user/login", data);
    return response;
  }

  Future<Response> login(Map data) {
    return Future.delayed(loginTime).then((_) {
      User user = User(id: 1, username: "jo");
      //User(1, "jo", "1111", "email", DateTime.now(), DateTime.now());
      String token =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.HkV3Z-V310H-DAff_VtEMM4fsNzdagusKE-YWFXX3PY";

      Map<String, dynamic> body = {};
      body["user"] = user.toJson();
      body["token"] = token;
      print(body);
      Response response = Response(request: null, statusCode: 201, body: body);

      return response;
    });
  }

  Future<Response> me() => fetchGet("/user/me");

  Future<Response> join(Map<String, dynamic> json) =>
      fetchPost("/user/join", json);
}
