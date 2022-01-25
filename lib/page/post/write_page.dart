import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/components/custom_elevated_button.dart';
import 'package:laudyou_app/components/custom_text_form_area.dart';
import 'package:laudyou_app/components/custom_text_form_filed.dart';
import 'package:laudyou_app/page/post/home_page.dart';
import 'package:laudyou_app/utils/validator_util.dart';

class WritePage extends StatelessWidget {
  //WritePage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                hint: "title",
                validator: validateTitle(),
                circular: 5,
              ),
              CustomTextFormArea(
                hint: "content",
                validator: validateContent(500),
                maxLength: 500,
              ),
              CustomElevatedButton(
                  text: "글쓰기",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.off(HomePage());
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
