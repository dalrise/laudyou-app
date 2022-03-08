import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/app_controller.dart';
import 'package:laudyou_app/controller/post_controller.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/view/page/home/components/category_item.dart';
import 'package:laudyou_app/view/page/home/components/search_item.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/auth_util.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  //UserController _userController = Get.put(UserController());
  //PostController _postController = Get.put(PostController());

  // Future<void> save_firstinstall() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setBool("firstinstall", true);
  // }

  final AppController c = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: FutureBuilder(
        future: c.initialize(),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(c.message.value?.notification?.title ?? 'title',
                    style: TextStyle(fontSize: 20)),
                Text(c.message.value?.notification?.body ?? 'message',
                    style: TextStyle(fontSize: 15)),
              ],
            ));
          } else if (snapshot.hasError) {
            return Center(child: Text('failed to initialize'));
          } else {
            return Center(child: Text('initializing...'));
          }
        },
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
