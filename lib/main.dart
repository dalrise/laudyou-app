import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:laudyou_app/page/post/home_page.dart';
import 'package:laudyou_app/page/user/join_page.dart';
import 'package:laudyou_app/page/user/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
