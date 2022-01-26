import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String username;
  final String password;
  final String email;
  final DateTime created;
  final DateTime updated;

  User(this.id, this.username, this.password, this.email, this.created,
      this.updated);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  /*
  User.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        username = map['username'],
        password = map['password'],
        email = map['email'],
        created = DateFormat("yyyy-mm-dd").parse(map['created']),
        updated = DateFormat("yyyy-mm-dd").parse(map['updated']);

   */
}
