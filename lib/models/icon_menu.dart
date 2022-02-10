import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

final List<IconMenu> iconMenuList1 = [
  IconMenu(title: "학습설정", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "허용앱 설정", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "사용통계", iconData: FontAwesomeIcons.studiovinari),
];

final List<IconMenu> iconMenuList2 = [
  IconMenu(title: "학습설정2", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "허용앱 설정2", iconData: FontAwesomeIcons.studiovinari),
  IconMenu(title: "사용통계2", iconData: FontAwesomeIcons.studiovinari),
];
