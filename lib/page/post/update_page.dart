import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("글 수정 페이지"),
      ),
    );
  }
}
