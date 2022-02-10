import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/user_controller.dart';
import 'package:laudyou_app/theme.dart';
import 'package:laudyou_app/utils/validator_util.dart';
import 'package:laudyou_app/view/components/custom_elevated_button.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:laudyou_app/view/components/default_button.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';
import 'package:laudyou_app/view/widget/navigation.dart';
import 'package:validators/validators.dart';

import 'login_page.dart';

class JoinPage extends StatefulWidget {
  //JoinPage();
  JoinPage({
    Key? key,
  }) : super(key: key);

  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final _userController = Get.put(UserController());

  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _passwordConfirm = TextEditingController();
  final _recommendCode = TextEditingController();

  var isRecomendCode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("회원가입"),
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Container(
            //   alignment: Alignment.center,
            //   //height: 200,
            //   child: Text(
            //     "회원가입 화면",
            //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //   ),
            // ),
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
          CustomTextFormField(
            hint: "이름/호칭",
            validator: validateUsername(),
            controller: _username,
            suffixIcon: Icon(Icons.person_outline),
          ),
          CustomTextFormField(
            hint: "이메일 주소",
            controller: _email,
            validator: validatePassword(),
            suffixIcon: Icon(Icons.email_outlined),
          ),
          CustomTextFormField(
            hint: "비밀번호 입력",
            controller: _password,
            validator: validatePassword(),
            suffixIcon: Icon(Icons.vpn_key),
          ),
          CustomTextFormField(
              hint: "비밀번호 확인",
              controller: _passwordConfirm,
              validator: validatePassword(),
              suffixIcon: Icon(Icons.vpn_key)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Text("추천인 코드"),
                    Icon(CupertinoIcons.question_circle_fill),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomTextFormField(
                    controller: _recommendCode,
                    hint: "추천인 리워드 코드 입력",
                    validator: validatePassword()),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Switch(
                  value: isRecomendCode,
                  onChanged: (value) {
                    setState(() {
                      isRecomendCode = value;
                    });
                  }),
              Expanded(
                  child: Text("라우드유에서 제공하는쿠폰, 프로모션, 설문조사, 업데이트를 이메일로 받고 싶습니다."))
            ],
          ),
          DefaultButton(
            text: "회원가입",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _showMyDialog(context);

                /*
                await EasyLoading.show(
                  status: 'loading...',
                  maskType: EasyLoadingMaskType.black,
                );
                try {
                  await _userController.join(
                      _username.text.trim(),
                      _email.text.trim(),
                      _password.text.trim(),
                      _recommendCode.text.trim(),
                      isRecomendCode);
                  await EasyLoading.dismiss();
                  // 로그인 페이지로 이동 할지 바로 로그인 할지 처리
                  Get.to(() => LoginPage());
                } catch (e) {
                  print(e);
                  await EasyLoading.showError(e.toString());
                }
                 */
                //
              }
            },
          ),
        ],
      ),
    );
  }
}

Future<void> _showMyDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text('AlertDialog Title'),
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
          SimpleDialogOption(
            onPressed: () {
              //Navigator.pop(context, Department.treasury);
            },
            child: const Text('Treasury department'),
          ),
          SimpleDialogOption(
            onPressed: () {
              //Navigator.pop(context, Department.state);
            },
            child: const Text('State department'),
          ),
        ],
        // content: SingleChildScrollView(
        //   child: ListBody(
        //     children: const <Widget>[
        //       Text('This is a demo alert dialog.'),
        //       Text('Would you like to approve of this message?'),
        //     ],
        //   ),
        // ),
        // actions: <Widget>[
        //   TextButton(
        //     child: const Text('Approve'),
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   ),
        // ],
      );
    },
  );
}

_buildJoinSuccess() {
  return CupertinoAlertDialog(
    title: Text("회원가입 완료"),
    content: Text("내용"),
    actions: [
      TextButton(
        child: const Text('Approve'),
        onPressed: () {
          //Navigator.of(context).pop();
        },
      ),
    ],
  );
}
