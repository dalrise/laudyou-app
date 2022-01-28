import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/question_controller.dart';
import 'package:laudyou_app/view/widget/navigation.dart';

class QuestionMainScreen extends StatelessWidget {
  QuestionMainScreen({Key? key}) : super(key: key);
  final QuestionController _controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigation(),
      appBar: AppBar(
        title: Text("퀴즈 메인"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(children: [
            ElevatedButton(
                onPressed: () async {
                  _controller.load();
                },
                child: _buildQuestionItem(Icons.emoji_symbols, "수학")),
            _buildQuestionItem(Icons.emoji_symbols, "영어"),
            _buildQuestionItem(Icons.emoji_symbols, "사자성어"),
          ]),
        ),
      ),
    );
  }
}

Widget _buildQuestionItem(IconData mIcon, String text) {
  return Container(
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(mIcon, color: Colors.redAccent, size: 30),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: Colors.black87),
        )
      ],
    ),
  );
}
