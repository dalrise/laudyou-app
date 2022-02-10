import 'package:flutter/material.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

class MySetting extends StatelessWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("설정"),
        centerTitle: true,
        bottom: AppbarBottomPreferredSize(),
      ),
      body: Container(
        child: Text("설정 페이지"),
      ),
    );
  }
}
