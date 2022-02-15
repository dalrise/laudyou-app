import 'package:flutter/material.dart';

// 리워드 프로그램
class MyRewardPage extends StatelessWidget {
  static String routeName = "my_reward";
  const MyRewardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("리워드 프로그램"),
      ),
    );
  }
}
