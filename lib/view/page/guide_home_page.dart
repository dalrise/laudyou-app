import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main_home_page.dart';

class GuideHomePage extends StatelessWidget {
  const GuideHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  Future<void> save_firstinstall() async {
    //final prefs = await SharedPreferences.getInstance();
    //prefs.setBool("firstinstall", true);

    Get.offAll(
        () => MainHomePage(
              title: '전달합니다.',
            ),
        transition: Transition.zoom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: save_firstinstall,
            child: Text("가이드 화면 종료"),
          ),
        ],
      ),
    );
  }
}
