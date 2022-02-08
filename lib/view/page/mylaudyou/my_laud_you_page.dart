import 'package:flutter/material.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_body.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_header.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

class MyLaudYouPage extends StatelessWidget {
  const MyLaudYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text("나의 LaudYou"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: const SingleChildScrollView(
        child: MyLaudYouBody(),
      ),
    );
  }
}
