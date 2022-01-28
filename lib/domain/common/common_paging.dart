import 'dart:convert';

import 'package:laudyou_app/domain/post/post.dart';

class CommonPaging<T> {
  final List<T> result;
  final int totalCnt;

  CommonPaging({required this.result, required this.totalCnt});

  factory CommonPaging.fromJson(Map<String, dynamic> json) => CommonPaging(
      result: CommonPaging.genericFormJson(json["list"] as List),
      totalCnt: json["totalCnt"]);

  // factory CommonPaging.fromJson(Map<String, dynamic> json) {
  //   return CommonPaging(
  //       result: (json['result'] as List<T>)?.map((e) => e as Post)?.toList(),
  //       totalCnt: json['totalCnt'] as int);
  // }

  static List<T> genericFormJson<T>(List json) {
    List<T> list = [];
    if (T == Post) {
      list = json.map((post) => Post.fromJson(post)).cast<T>().toList();
    }
    return list;
  }
}
