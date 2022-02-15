import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

// 비밀번호 변경
class MyPasswordPage extends StatefulWidget {
  static String routeName = "my_password";

  const MyPasswordPage({Key? key}) : super(key: key);

  @override
  _MyPasswordPageState createState() => _MyPasswordPageState();
}

class _MyPasswordPageState extends State<MyPasswordPage> {
  UserController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("비밀번호 변경"),
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              CustomTextFormField(
                  initialValue: controller.loginInfo.value.email,
                  hint: "현재 이메일",
                  readOnly: true,
                  validator: (String? value) {
                    return null;
                  }),
              CustomTextFormField(
                  hint: "기존 비밀번호 입력",
                  obscureText: true,
                  validator: (String? value) {
                    return null;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
