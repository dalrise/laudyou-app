import 'package:flutter/material.dart';

// 고객센터 메인
class HelpMainPage extends StatelessWidget {
  static String routeName = "help_main";

  const HelpMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("고객센타"),
      ),
    );
  }
}
