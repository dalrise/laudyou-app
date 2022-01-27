import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/post_controller.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/view/page/post/write_page.dart';
import 'package:laudyou_app/view/page/user/user_info.dart';
import '../../../size.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  UserController _userController = Get.put(UserController());
  PostController _postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    _postController.findAll();

    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(
        title: Text("${_userController.isLogin}"),
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.to(
                  () => DetailPage(
                        id: index,
                      ),
                  arguments: "arguments 로 넘기기");
            },
            title: Text("제목$index"),
            leading: Text((index + 1).toString()),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }

  Widget _navigation(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Get.to(() => HomePage());
                },
                child: Text(
                  "글목록",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Get.to(() => WritePage());
                },
                child: Text(
                  "글쓰기",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Get.to(() => UserInfo());
                },
                child: Text(
                  "회원정보 보기",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  _userController.goLogin();
                },
                child: Obx(
                  () => Text(
                    (_userController.isLogin.value ? "로그아웃" : "로그인"),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
