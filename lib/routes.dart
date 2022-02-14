import 'package:flutter/cupertino.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';
import 'package:laudyou_app/view/page/user/join_page.dart';
import 'package:laudyou_app/view/page/user/login_page.dart';

final Map<String, WidgetBuilder> route = {
  MainHomePage.routeName: (context) => const MainHomePage(title: 'Laud You'),
  JoinPage.routeName: (context) => JoinPage(),
  LoginPage.routeName: (context) => LoginPage(),
};
