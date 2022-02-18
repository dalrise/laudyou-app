import 'package:flutter/material.dart';

// 앱 관리
class MyAppMngPage extends StatefulWidget {
  static String routeName = "my_app_mng";

  const MyAppMngPage({Key? key}) : super(key: key);

  @override
  _MyAppMngPageState createState() => _MyAppMngPageState();
}

class _MyAppMngPageState extends State<MyAppMngPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("앱 관리"),
      ),
    );
  }
}
