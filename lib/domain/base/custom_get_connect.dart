import 'package:get/get.dart';
import 'package:laudyou_app/environment.dart';
import '../../utils/auth_util.dart';

//const _host = "http://172.16.20.79:3000/api";
//const _host = "http://192.168.0.11:3000/api";

final String _baseUrl =
    FlavorConfig.instance.baseUrl; //"http://10.0.2.2:3000/api"; // localhost

class CustomGetConnect extends GetConnect {
  Duration get loginTime => const Duration(milliseconds: 1250);

  Future<Response> fetchGet(String url) async {
    String token = await getJwtToken();
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    return await get("$_baseUrl$url", headers: headers);
  }

  Future<Response<T>> fetchPost<T>(String url, dynamic body) async {
    String token = await getJwtToken();

    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response = await post<T>("$_baseUrl$url", body, headers: headers);
    return response;
  }
}
