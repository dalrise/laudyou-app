import 'package:flutter/material.dart';

// 회원탈퇴
class MyLeavePage extends StatefulWidget {
  static String routeName = "my_leave";

  const MyLeavePage({Key? key}) : super(key: key);

  @override
  _MyLeavePageState createState() => _MyLeavePageState();
}

class _MyLeavePageState extends State<MyLeavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원탈퇴"),
      ),
    );
  }
}
