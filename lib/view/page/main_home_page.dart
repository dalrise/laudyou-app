import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/post_controller.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/view/page/home/home_screen.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_header.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_laud_you_page.dart';
import 'package:laudyou_app/view/page/question/question_home_page.dart';
import 'package:laudyou_app/view/screen/question_main_screen.dart';
import 'package:laudyou_app/view/widget/bottom_bar.dart';
import 'package:laudyou_app/view/widget/navigation.dart';

class MainHomePage extends StatefulWidget {
  static String routeName = "/";

  const MainHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('title'),
      // ),
      // drawer: Navigation(),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Container(
            color: Colors.orange[100],
            child: HomeScreen(),
          ),
          Container(
            color: Colors.orange[200],
            child: QuestionHomePage(
              expression: '2+2=4',
              operation: 'plus',
            ),
          ),
          Container(
            color: Colors.orange[200],
            child: const MyLaudYouPage(),
          ),
          Container(
            color: Colors.orange[200],
            child: QuestionHomePage(
              expression: '2+2=4',
              operation: 'plus',
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "홈"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.question), label: "문제"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "내정보"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.question_circle), label: "고객센타"),
        ],
      ),
    );
  }
}

/*
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
*/
