import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/post_controller.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/view/screen/home_screen.dart';
import 'package:laudyou_app/view/screen/question_main_screen.dart';
import 'package:laudyou_app/view/widget/bottom_bar.dart';
import 'package:laudyou_app/view/widget/navigation.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({Key? key, required this.title}) : super(key: key);

  // UserControllerroller _userController = Get.put(UserController());
  // PostController _postController = Get.put(PostController());

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Navigation(),
        appBar: AppBar(
          title: Text(title),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const HomeScreen(),
            Container(
              child: Center(child: Text("save")),
            ),
            Container(
              child: Center(child: Text("search")),
            ),
            Container(
              child: Center(child: Text("save")),
            ),
          ],
        ),
        bottomNavigationBar: const BottomBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => QuestionMainScreen());
          },
          tooltip: '문제 풀기',
          child: const Icon(
            Icons.quiz,
            color: Colors.pink,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
