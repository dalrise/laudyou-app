import 'package:get/get.dart';
import 'package:laudyou_app/domain/post/post_repository.dart';

class PostController extends GetxController {
  final PostRepository _postRepository = PostRepository();

  @override
  void onInit() {
    findAll();
    super.onInit();
  }

  void findAll() {
    _postRepository.findAll();
  }
}
