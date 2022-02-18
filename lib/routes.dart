import 'package:flutter/cupertino.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_app_mng_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_cash_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_laud_you_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_learner_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_learning_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_leave_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_password_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_reward_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_schedule_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_setting_page.dart';
import 'package:laudyou_app/view/page/user/join_page.dart';
import 'package:laudyou_app/view/page/user/login_page.dart';

final Map<String, WidgetBuilder> route = {
  MainHomePage.routeName: (context) => const MainHomePage(title: 'Laud You'),
  JoinPage.routeName: (context) => JoinPage(),
  LoginPage.routeName: (context) => LoginPage(),
  // mypage
  MyLaudYouPage.routeName: (context) => const MyLaudYouPage(),
  MyPasswordPage.routeName: (context) => const MyPasswordPage(),
  MySetting.routeName: (context) => const MySetting(),
  // 학습자 정보 관리
  MyLearnerPage.routeName: (context) => const MyLearnerPage(),
  MyLearningPage.routeName: (context) => const MyLearningPage(),
  MySchedulePage.routeName: (context) => const MySchedulePage(),
  MyAppMngPage.routeName: (context) => const MyAppMngPage(),
  MyCashPage.routeName: (context) => const MyCashPage(),
  MyRewardPage.routeName: (context) => MyRewardPage(),
  MyLeavePage.routeName: (context) => MyLeavePage(),
};
