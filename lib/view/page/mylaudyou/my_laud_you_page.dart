import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_body.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_header.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

import 'my_setting_page.dart';

class MyLaudYouPage extends StatelessWidget {
  const MyLaudYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text("나의 LaudYou"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => MySetting());
              },
              icon: const Icon(Icons.settings))
        ],
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: SingleChildScrollView(
        child: MyLaudYouBody(),
      ),
    );
  }
}
