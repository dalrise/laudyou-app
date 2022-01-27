import 'dart:convert';

import 'package:laudyou_app/domain/post/post.dart';

class CommonPaging<T> {
  final List<Post>? result;
  final int totalCnt;

  CommonPaging({required this.result, required this.totalCnt});

  // factory CommonPaging.fromJson(Map<String, dynamic> json) {
  //   return CommonPaging(
  //       result: (json['result'] as List<T>)?.map((e) => e as Post)?.toList(),
  //       totalCnt: json['totalCnt'] as int);
  // }

  static T? genaricFormJson<T>() {
    T? obj;
    if (T == Post) {
      print('post');
      //obj = Post.fromJson(json) as T?;
    }
    return obj;
  }
}
