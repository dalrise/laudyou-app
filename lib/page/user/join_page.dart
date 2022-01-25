import 'package:flutter/material.dart';
import 'package:laudyou_app/components/custom_elevated_button.dart';
import 'package:laudyou_app/components/custom_text_form_filed.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(hint: "UserName"),
          CustomTextFormField(hint: "Password"),
          CustomTextFormField(hint: "Email"),
          CustomElevatedButton(
            text: "회원가입",
          ),
        ],
      ),
    );
  }
}
