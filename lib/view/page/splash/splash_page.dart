import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laudyou_app/constants.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const MainHomePage(title: "Laud You"));
    });

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
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
                    Get.off(() => const MainHomePage(title: "Laud You"));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
