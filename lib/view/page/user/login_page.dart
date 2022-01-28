import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/dto/user/login_res_dto.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/domain/user/user_repository.dart';
import 'package:laudyou_app/utils/validator_util.dart';
import 'package:laudyou_app/view/components/custom_elevated_button.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:laudyou_app/view/page/post/home_page.dart';
import 'package:laudyou_app/view/widget/navigation.dart';

import 'join_page.dart';

class LoginPage extends StatelessWidget {
  //LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  UserController _userController = Get.put(UserController());

  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인"),
      ),
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
                Get.to(() => JoinPage());
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
          CustomTextFormField(
            hint: "UserName",
            validator: validateUsername(),
            controller: _username,
          ),
          CustomTextFormField(
            hint: "Password",
            validator: validatePassword(),
            controller: _password,
          ),
          CustomElevatedButton(
              text: "로그인",
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  //Get.to(() => HomePage());
                  LoginResDto? loginResDto = await _userController.login(
                      _username.text.trim(), _password.text.trim());
                  if (loginResDto == null) {
                    Get.snackbar("로그인 시도", "로그인 실패");
                  } else {
                    Get.to(() => HomePage());
                  }
                }
              }),
        ],
      ),
    );
  }
}
