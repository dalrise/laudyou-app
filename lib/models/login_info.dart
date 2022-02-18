class LoginInfo {
  int id;
  String name;
  String email;

  LoginInfo({required this.id, required this.name, required this.email});

  @override
  String toString() => '$id, $name, $email';
}
