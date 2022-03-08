import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/components/default_button.dart';

import '../../widget/appbar_bottom_preferredsize.dart';
import '../study/study_home_page.dart';
import 'components/category_item.dart';
import 'components/search_item.dart';

class HomeDashboardPage extends StatefulWidget {
  HomeDashboardPage({Key? key}) : super(key: key);

  @override
  State<HomeDashboardPage> createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends State<HomeDashboardPage>
    with TickerProviderStateMixin {
  late final AnimationController _animationIconController1;
  bool isarrowmenu = false;

  @override
  void initState() {
    super.initState();

    _animationIconController1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
      reverseDuration: const Duration(milliseconds: 350),
    );
  }

  @override
  void dispose() {
    _animationIconController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultButton(
                  text: "공부하기",
                  press: () {
                    Get.toNamed(StudyHomePage.routeName);
                  },
                ),
                //Image.asset("assets/images/dashboard1.png"),
                //Image.asset("assets/images/dashboard2.png"),
              ],
            ),
          ),
        ));
  }

  _appBar() {
    return AppBar(
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              isarrowmenu
                  ? _animationIconController1.reverse()
                  : _animationIconController1.forward();

              setState(() {
                isarrowmenu = !isarrowmenu;
              });
            },
            child: AnimatedIcon(
              //FontAwesomeIcons.bars,
              //FontAwesomeIcons.angleDoubleLeft,
              progress: _animationIconController1,
              size: 30,
              icon: AnimatedIcons.list_view,
            ),
          ),
          const SizedBox(width: 10.0),
          const Icon(
            CupertinoIcons.person,
            size: 30,
          ),
          const SizedBox(width: 4.0),
          Text('렌코쿠')
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
