import 'package:get/get_connect/http/src/response/response.dart';
import 'package:laudyou_app/controller/dto/user/login_req_dto.dart';
import 'package:laudyou_app/domain/common/common_paging.dart';
import 'package:laudyou_app/domain/post/post.dart';
import 'package:laudyou_app/domain/post/post_provider.dart';

class PostRepository {
  final PostProvider _postProvider = PostProvider();

  Future<CommonPaging<Post>> findAll() async {
    Response response = await _postProvider.findAll();
    //dynamic body = response.body;
    //print(body);
    CommonPaging<Post> result = CommonPaging.fromJson(response.body);

    // print(result.totalCnt);
    // print(result.result[0].title);

    return result;
  }

  Future<Post> findById(id) async {
    Response response = await _postProvider.findById(id);

    if (response.statusCode == 1) {
      Post post = Post.fromJson(response.body);
      return post;
    } else {
      return Post(id: 0, title: "");
    }
  }
}
