import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/page/post/home_page.dart';
import 'package:laudyou_app/view/page/user/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
