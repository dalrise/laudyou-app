import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/app_controller.dart';
import 'package:laudyou_app/controller/post_controller.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/services/notification_service.dart';
import 'package:laudyou_app/view/components/default_button.dart';
import 'package:laudyou_app/view/page/help/help_main_page.dart';
import 'package:laudyou_app/view/page/home/home_dashbord_page.dart';
import 'package:laudyou_app/view/page/home/home_screen.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_header.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_laud_you_page.dart';
import 'package:laudyou_app/view/page/question/question_home_page.dart';
import 'package:laudyou_app/view/screen/question_main_screen.dart';
import 'package:laudyou_app/view/widget/bottom_bar.dart';
import 'package:laudyou_app/view/widget/navigation.dart';

class MainHomePage extends StatefulWidget {
  static String routeName = "main-home";
  //final AppController controller = Get.put(AppController());
  MainHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _selectedIndex = 0;

  var notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();

    //widget.controller.initialize();
  }

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
            color: Colors.orange[300],
            child: HelpMainPage(),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar2(),
    );
  }

  Widget _bottomButton(
      {required IconData icon,
      required Color color,
      final GestureTapCallback? press}) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 66,
        child: Icon(icon, color: color, size: 30),
      ),
    );
  }

  Widget _buildBottomNavigationBar2() {
    return Container(
      height: 56,
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Row(
        children: [
          _bottomButton(
              icon: FontAwesomeIcons.chartBar,
              color: _selectedIndex == 0 ? kButtonColor : kPrimaryColor,
              press: () {
                setState(() {
                  _selectedIndex = 0;
                });
              }),
          _bottomButton(
              icon: FontAwesomeIcons.shoppingCart,
              color: _selectedIndex == 1 ? kButtonColor : kPrimaryColor,
              press: () {
                setState(() {
                  _selectedIndex = 1;
                });
              }),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Text("스스로\n관리중",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white)),
            ),
          ),
          _bottomButton(
              icon: FontAwesomeIcons.user,
              color: _selectedIndex == 2 ? kButtonColor : kPrimaryColor,
              press: () {
                setState(() {
                  _selectedIndex = 2;
                });
              }),
          _bottomButton(
              icon: FontAwesomeIcons.question,
              color: _selectedIndex == 3 ? kButtonColor : kPrimaryColor,
              press: () {
                setState(() {
                  _selectedIndex = 3;
                });
              }),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
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
            label: "",
            icon: Icon(CupertinoIcons.question),
            backgroundColor: kPrimaryColor),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person), label: "내정보"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.question_circle), label: "고객센타"),
      ],
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
