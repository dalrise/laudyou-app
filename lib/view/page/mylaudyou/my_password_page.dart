import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:laudyou_app/view/components/default_button.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

import '../../../utils/validator_util.dart';

// 비밀번호 변경
class MyPasswordPage extends StatefulWidget {
  static String routeName = "my_password";

  const MyPasswordPage({Key? key}) : super(key: key);

  @override
  _MyPasswordPageState createState() => _MyPasswordPageState();
}

class _MyPasswordPageState extends State<MyPasswordPage> {
  UserController controller = Get.find();
  final _passwordCurrent = TextEditingController();
  final _password = TextEditingController();
  final _passwordConfirm = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("비밀번호 변경"),
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildForm(),
      ),
    );
  }

  Form _buildForm() {
    return Form(
      key: _formKey,
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
              controller: _passwordCurrent,
              validator: (String? value) {
                return null;
              }),
          CustomTextFormField(
            hint: "비밀번호확인",
            validator: validatePassword(),
            controller: _password,
          ),
          CustomTextFormField(
            hint: "비밀번호확인",
            validator: validatePassword(),
            controller: _passwordConfirm,
          ),
          SizedBox(height: 10),
          DefaultButton(
            text: "저장하기",
            press: () async {
              if (_formKey.currentState!.validate()) {
                try {
                  await controller.changePassword(
                      _passwordCurrent.text.trim(), _password.text.trim());

                  await EasyLoading.dismiss();

                  Get.offAllNamed(MainHomePage.routeName);
                } catch (e) {
                  print(e);
                  await EasyLoading.showError(e.toString());

                  //await EasyLoading.dismiss();
                }
              }
              //Get.to(() => JoinPage());
            },
          ),
        ],
      ),
    );
  }
}
