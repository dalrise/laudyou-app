import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:laudyou_app/domain/user/user.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final int? id;
  final String? title;
  final String? content;
  final User? user;
  final DateTime? created;
  final DateTime? updated;

  Post(
      {this.id,
      this.title,
      this.content,
      this.user,
      this.created,
      this.updated});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

/*
  Post.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        content = map['content'],
        user = User.fromMap(map["user"]),
        created = DateFormat("yyyy-mm-dd").parse(map['created']),
        updated = DateFormat("yyyy-mm-dd").parse(map['updated']);

 */
}
