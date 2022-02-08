import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/page/user/login_page.dart';

import '../../../components/default_button.dart';

class MyLaudYouHeader extends StatelessWidget {
  const MyLaudYouHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            SizedBox(
              width: 250,
              child: Text(
                "회원 가입하고\n 다양한 문제를 풀어보세요.",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "가입 혜택 보기 〉",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: DefaultButton(
                text: "로그인/회원가입",
                press: () {
                  Get.to(() => LoginPage());
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
