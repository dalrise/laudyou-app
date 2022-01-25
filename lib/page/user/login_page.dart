import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/components/custom_elevated_button.dart';
import 'package:laudyou_app/components/custom_text_form_filed.dart';
import 'package:laudyou_app/page/post/home_page.dart';
import 'package:laudyou_app/page/user/join_page.dart';
import 'package:laudyou_app/utils/validator_util.dart';

class LoginPage extends StatelessWidget {
  //LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                "로그인 화면",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _loginForm(),
            TextButton(
              onPressed: () {
                Get.to(JoinPage());
              },
              child: const Text("회원  가입 하러 가기"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(hint: "UserName", validator: validateUsername()),
          CustomTextFormField(hint: "Password", validator: validatePassword()),
          CustomElevatedButton(
              text: "로그인",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Get.to(HomePage());
                }
              }),
        ],
      ),
    );
  }
}
