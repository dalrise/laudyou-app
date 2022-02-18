import 'package:flutter/material.dart';

// 캐시 관리
class MyCashPage extends StatelessWidget {
  static String routeName = "my_cash";

  const MyCashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("캐시 관리"),
      ),
    );
  }
}
