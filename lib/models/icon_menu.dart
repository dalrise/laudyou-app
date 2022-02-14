import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';

import '../controller/user_controller.dart';

class IconMenu {
  final String title;
  final IconData iconData;
  final String? page;
  VoidCallback? callback;

  IconMenu(
      {required this.title, required this.iconData, this.page, this.callback});
}

final List<IconMenu> iconMenuList1 = [
  IconMenu(title: "학습관리", iconData: FontAwesomeIcons.studiovinari, page: ""),
  IconMenu(title: "일정관리", iconData: FontAwesomeIcons.studiovinari, page: ""),
  IconMenu(title: "앱관리", iconData: FontAwesomeIcons.studiovinari, page: ""),
];

final List<IconMenu> iconMenuList2 = [
  IconMenu(title: "캐시관리", iconData: FontAwesomeIcons.studiovinari, page: ""),
  IconMenu(
      title: "리워 프로그램(5% + 5%)",
      iconData: FontAwesomeIcons.studiovinari,
      page: ""),
  IconMenu(title: "사용통계2", iconData: FontAwesomeIcons.studiovinari, page: ""),
];

final List<IconMenu> iconMenuList3 = [
  IconMenu(title: "비밀번호 변경", iconData: FontAwesomeIcons.studiovinari, page: ""),
  IconMenu(
      title: "로그아웃",
      iconData: FontAwesomeIcons.studiovinari,
      // ignore: void_checks
      callback: () {
        UserController controller = Get.find();
        controller.logout();
        Get.offAllNamed(MainHomePage.routeName);
      }),
  IconMenu(title: "회원탈퇴", iconData: FontAwesomeIcons.studiovinari, page: ""),
];
