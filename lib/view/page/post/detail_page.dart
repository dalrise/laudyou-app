import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/post_controller.dart';
import 'package:laudyou_app/view/page/post/update_page.dart';

import 'home_page.dart';

class DetailPage extends StatelessWidget {
  final int id;

  const DetailPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostController p = Get.find();

    String data = '';
    if (Get.arguments != null) {
      data = Get.arguments;
    }

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  p.post.value.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => HomePage());
                      },
                      child: Text("삭제"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => UpdatePage(
                              id: id,
                            ));
                      },
                      child: Text("수정"),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text("Detail Page $id $data" * 500),
                  ),
                ),
              ],
              //child: Text("Detail Page $id $data"),
            )),
      ),
    );
  }
}
