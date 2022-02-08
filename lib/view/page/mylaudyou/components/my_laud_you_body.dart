import 'package:flutter/material.dart';
import 'package:laudyou_app/view/page/mylaudyou/components/my_laud_you_header.dart';

class MyLaudYouBody extends StatelessWidget {
  const MyLaudYouBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [MyLaudYouHeader()],
    );
  }
}
