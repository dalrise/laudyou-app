import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laudyou_app/constants.dart';
import 'package:laudyou_app/theme.dart';
import 'package:laudyou_app/view/components/custom_elevated_button.dart';
import 'package:laudyou_app/view/components/default_button.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // apppBar: AppBar(
      //   title: Text("휴대폰 관리 공부앱"),
      // ),
      body: SafeArea(
        child: Container(
          color: kPrimaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("휴대폰 관리 공부앱"),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/images/logo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Laud You",
                style: textTheme().bodyText1,
              ),
              Text(
                "공부도 하면서 휴대폰을 사용하는 여러분,\n아주 많이 칭찬합니다.",
                style: textTheme().bodyText2,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DefaultButton(
                    press: () {},
                    width: 100,
                    text: "스스로 공부하기",
                  ),
                  DefaultButton(
                    press: () {},
                    width: 100,
                    text: "부모가 관리하기",
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "기존 계정으로 로그인하기",
                      style: textTheme().bodyText1,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(CupertinoIcons.question, size: 20),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
