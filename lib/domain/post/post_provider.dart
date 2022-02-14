import 'package:get/get.dart';
import 'package:laudyou_app/domain/base/custom_get_connect.dart';
import 'package:laudyou_app/utils/auth_util.dart';

class PostProvider extends CustomGetConnect {
  // 게시물 목록
  Future<Response> findAll() => fetchGet("/notice/sample");

  // 게시물 정보
  Future<Response> findById(id) => fetchGet("/notice/$id");
}
