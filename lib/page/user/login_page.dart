import 'package:flutter/material.dart';
import 'package:laudyou_app/components/custom_elevated_button.dart';
import 'package:laudyou_app/components/custom_text_form_filed.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(hint: "UserName"),
          CustomTextFormField(hint: "Password"),
          CustomElevatedButton(
            text: "로그인",
          ),
        ],
      ),
    );
  }
}
