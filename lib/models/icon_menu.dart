import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

final List<IconMenu> iconMenuList1 = [
  IconMenu(title: "학습관리", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "일정관리", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "앱관리", iconData: FontAwesomeIcons.studiovinari),
];

final List<IconMenu> iconMenuList2 = [
  IconMenu(title: "캐시관리", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "리워 프로그램(5% + 5%)", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "사용통계2", iconData: FontAwesomeIcons.studiovinari),
];

final List<IconMenu> iconMenuList3 = [
  IconMenu(title: "비밀번호 변경", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "로그아웃", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "회원탈퇴", iconData: FontAwesomeIcons.studiovinari),
];
