import 'package:get/get_connect/http/src/response/response.dart';

import '../base/custom_get_connect.dart';

class AppProvider extends CustomGetConnect {
  Future<Response> addToken(data) => fetchPost("/app/addToken", data);
}
