import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

import '../../components/text_sub_title.dart';

// 앱 관리
class MyAppMngPage extends StatefulWidget {
  static String routeName = "my_app_mng";

  const MyAppMngPage({Key? key}) : super(key: key);

  @override
  _MyAppMngPageState createState() => _MyAppMngPageState();
}

class _MyAppMngPageState extends State<MyAppMngPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("앱 관리"),
        bottom: AppbarBottomPreferredSize(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              //height: 60,
              child: TextSubTitle(
                title: "항상 사용 가능 앱",
                icon: FontAwesomeIcons.clock,
                subTitle: "항상 사용이 가능한 앱입니다.",
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              color: Colors.greenAccent,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: List.generate(
                    5,
                    (index) => _buildAppItem(),
                  ),
                ),
              ),
            ),
            SizedBox(
              //height: 60,
              child: TextSubTitle(
                title: "공부 후 사용 가능 앱",
                icon: FontAwesomeIcons.hourglass,
                subTitle: "항상 사용이 가능한 앱입니다.",
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              color: Colors.greenAccent,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: List.generate(
                    5,
                    (index) => _buildAppItem(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_buildAppItem() {
  return Row(
    children: [
      Icon(Icons.calculate_outlined),
      SizedBox(width: 10),
      Expanded(child: Text("계산기")),
      ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.arrow_upward_outlined),
              Text("항상"),
            ],
          )),
      SizedBox(width: 10),
      ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.add),
              Text("공부"),
            ],
          )),
    ],
  );
}
