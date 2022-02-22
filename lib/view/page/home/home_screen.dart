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
      appBar: _appBar(),
      body: Container(
        child: Center(
          child: Text("DASH BOARD"),
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
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
    );
  }
}
