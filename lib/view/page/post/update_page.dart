import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/utils/validator_util.dart';
import 'package:laudyou_app/view/components/custom_elevated_button.dart';
import 'package:laudyou_app/view/components/custom_text_form_area.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';

class UpdatePage extends StatelessWidget {
  final int id;

  UpdatePage({Key? key, required this.id}) : super(key: key);

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
                initialValue: "제목",
                hint: "title",
                validator: validateTitle(),
                circular: 5,
              ),
              CustomTextFormArea(
                initialValue: "내용" * 100,
                hint: "content",
                validator: validateContent(500),
                maxLength: 500,
              ),
              CustomElevatedButton(
                  text: "글 수정하기",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //Get.off(() => DetailPage(id: id));
                      Get.back();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
