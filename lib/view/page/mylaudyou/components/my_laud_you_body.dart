import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/models/icon_menu.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/card_icon_menu.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_header.dart';

class MyLaudYouBody extends StatelessWidget {
  MyLaudYouBody({Key? key}) : super(key: key);

  //final UserController _userController = Get.find<UserController>();
  UserController _userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    //print(_userController.isLogin.value);
    return Column(
      children: [
        Obx(
          () => Visibility(
            child: const MyLaudYouHeader(),
            visible: !_userController.isLogin.value,
          ),
        ),
        const SizedBox(height: 8),
        CardIconMenu(iconMenuList: iconMenuList1),
        const SizedBox(height: 8),
        CardIconMenu(iconMenuList: iconMenuList2),
      ],
    );
  }
}
