import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laudyou_app/constants.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/utils/auth_util.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';
import 'package:laudyou_app/view/page/user/first_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  UserController controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      /*
      final firstInstall = await getFirstInstall();
      print('firstInstall:${firstInstall}');
      if (firstInstall) {
        Get.off(() => FirstPage());
      } else {
        Get.off(() => const MainHomePage(title: "Laud You"));
      }
       */

      print('controller.isLogin.value:${controller.isLogin.value}');
      if (controller.isLogin.value) {
        Get.offNamed(MainHomePage.routeName);
      } else {
        Get.off(() => FirstPage());
      }
    });

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: _buildLottie(),
      ),
    );
  }

  Widget _buildLottie() {
    return Center(
      child: ListView(shrinkWrap: true, children: [
        // Load a Lottie file from your assets
        Lottie.asset('assets/lottie/95074-hamburger-loading.json'),
      ]),
    );
  }

  Column _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              "Laud You....",
              style: GoogleFonts.aladin(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: TextButton(
              child: const Text("Continue"),
              onPressed: () {
                Get.offNamed(MainHomePage.routeName);
              },
            ),
          ),
        )
      ],
    );
  }
}
