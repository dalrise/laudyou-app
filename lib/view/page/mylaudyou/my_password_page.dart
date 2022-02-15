import 'package:flutter/material.dart';

// 비밀번호 변경
class MyPasswordPage extends StatefulWidget {
  static String routeName = "my_password";

  const MyPasswordPage({Key? key}) : super(key: key);

  @override
  _MyPasswordPageState createState() => _MyPasswordPageState();
}

class _MyPasswordPageState extends State<MyPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("비밀번호 변경"),
      ),
    );
  }
}
