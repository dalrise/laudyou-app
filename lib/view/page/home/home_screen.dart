import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/post_controller.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/view/page/home/components/category_item.dart';
import 'package:laudyou_app/view/page/home/components/search_item.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/auth_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //UserController _userController = Get.put(UserController());
  //PostController _postController = Get.put(PostController());

  // Future<void> save_firstinstall() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setBool("firstinstall", true);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('수학'),
            SizedBox(width: 4.0),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => SearchItem(), transition: Transition.rightToLeft);
              },
              icon: const Icon(CupertinoIcons.search)),
          IconButton(
              onPressed: () {
                Get.to(() => const CategoryItem(),
                    transition: Transition.rightToLeft);
              },
              icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: Container(
        child: Center(
          child: Text("DASH BOARD"),
        ),
      ),
    );
  }
  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인 화면'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              width: double.maxFinite,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text(
                'DashBoard',
                style: const TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: save_firstinstall,
            child: Text('로그인'),
          ),
        ],
      ),
    );
  }
   */
}
