import 'package:get/get.dart';
import 'package:laudyou_app/domain/common/common_paging.dart';
import 'package:laudyou_app/domain/post/post.dart';
import 'package:laudyou_app/domain/post/post_repository.dart';

class PostController extends GetxController {
  final PostRepository _postRepository = PostRepository();

  final posts = <Post>[].obs;
  final totalCount = 0.obs;
  final post = Post(id: 0, title: '').obs;

  @override
  void onInit() {
    findAll();
    super.onInit();
  }

  Future<void> findAll() async {
    CommonPaging<Post> result = await _postRepository.findAll();
    posts.value = result.result;
    totalCount.value = result.totalCnt;
  }

  Future<void> findById(int id) async {
    Post data = await _postRepository.findById(id);

    post.value = data;
  }
}
