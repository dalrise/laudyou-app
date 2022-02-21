import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:laudyou_app/view/components/default_button.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';
import 'package:laudyou_app/view/page/mylaudyou/my_laud_you_page.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

class MyLearnerPage extends StatefulWidget {
  static String routeName = "my_learner";

  const MyLearnerPage({Key? key}) : super(key: key);

  @override
  _MyLearnerPageState createState() => _MyLearnerPageState();
}

class _MyLearnerPageState extends State<MyLearnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("학습자 정보 관리"),
        bottom: AppbarBottomPreferredSize(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   backgroundColor: Colors.greenAccent[400],
              //   radius: 50,
              //   child: Text(
              //     '사진',
              //     style: TextStyle(fontSize: 25, color: Colors.white),
              //   ),
              // ),
              SizedBox(height: 20),
              _buildProfileRow(),
              _buildProfileForm(context),
            ],
          ),
        ),
      ),
    );
  }
}

_buildProfileRow() {
  return Stack(
    children: [
      SizedBox(
        width: 100,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "assets/images/logo.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.grey[100]),
          child: Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
        ),
      ),
    ],
  );
}

_buildProfileForm(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 20),
      CustomTextFormField(
        hint: "이름 / 호칭",
        validator: (String? value) {
          return null;
        },
        //controller: _username,
      ),
      DefaultButton(
        text: "변경 저장",
        press: () async {
          final result = await showOkAlertDialog(
            // title: "정보변경",
            message: "변경되었습니다.",
            context: context,
          );

          if (result == OkCancelResult.ok) {
            Get.back();
          }
        },
      ),
    ],
  );
}
