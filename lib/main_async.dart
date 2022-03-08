import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/page/guide_home_page.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

Future<bool> _readFirstinstall() async {
  final prefs = await SharedPreferences.getInstance();
  var value = prefs.getBool("firstinstall") ?? false;

  return value;
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var first = await _readFirstinstall();
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LaudYou Service',
        home: (first
            ? MainHomePage(title: '메인 화면')
            : const GuideHomePage(
                title: 'LaudYou 처음 사용자용 Guide Page',
              ))),
  );
}
