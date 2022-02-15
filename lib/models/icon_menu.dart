import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_app_mng_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_cash_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_learner_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_learning_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_leave_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_password_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_reward_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_schedule_page.dart';

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
  IconMenu(
      title: "학습관리",
      iconData: FontAwesomeIcons.studiovinari,
      page: MyLearningPage.routeName),
  IconMenu(
      title: "학습자 정보관리",
      iconData: FontAwesomeIcons.studiovinari,
      page: MyLearnerPage.routeName),
  IconMenu(
      title: "일정관리",
      iconData: FontAwesomeIcons.studiovinari,
      page: MySchedulePage.routeName),
  IconMenu(
      title: "앱관리",
      iconData: FontAwesomeIcons.studiovinari,
      page: MyAppMngPage.routeName),
];

final List<IconMenu> iconMenuList2 = [
  IconMenu(
      title: "캐시관리",
      iconData: FontAwesomeIcons.studiovinari,
      page: MyCashPage.routeName),
  IconMenu(
      title: "리워드 프로그램(5% + 5%)",
      iconData: FontAwesomeIcons.studiovinari,
      page: MyRewardPage.routeName),
  IconMenu(title: "사용통계2", iconData: FontAwesomeIcons.studiovinari, page: ""),
];

final List<IconMenu> iconMenuList3 = [
  IconMenu(
      title: "비밀번호 변경",
      iconData: FontAwesomeIcons.studiovinari,
      page: MyPasswordPage.routeName),
  IconMenu(
      title: "로그아웃",
      iconData: FontAwesomeIcons.studiovinari,
      // ignore: void_checks
      callback: () {
        UserController controller = Get.find();
        controller.logout();
        Get.offAllNamed(MainHomePage.routeName);
      }),
  IconMenu(
      title: "회원탈퇴",
      iconData: FontAwesomeIcons.studiovinari,
      page: MyLeavePage.routeName),
];
