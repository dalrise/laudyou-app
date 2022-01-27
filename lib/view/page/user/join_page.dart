import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/utils/validator_util.dart';
import 'package:laudyou_app/view/components/custom_elevated_button.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:validators/validators.dart';

import 'login_page.dart';

class JoinPage extends StatelessWidget {
  //JoinPage();
  JoinPage({Key? key}) : super(key: key);

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
                "회원가입 화면",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _joinForm(),
            TextButton(
              onPressed: () {
                Get.to(LoginPage());
              },
              child: const Text("로그인 페이지로 가기"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(hint: "UserName", validator: validateUsername()),
          CustomTextFormField(hint: "Password", validator: validatePassword()),
          CustomTextFormField(hint: "Email", validator: validatePassword()),
          CustomElevatedButton(
            text: "회원가입",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Get.to(LoginPage());
              }
            },
          ),
        ],
      ),
    );
  }
}
