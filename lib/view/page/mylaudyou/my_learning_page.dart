import 'package:flutter/material.dart';

// 학습 관리
class MyLearningPage extends StatefulWidget {
  static String routeName = "my_learning";

  const MyLearningPage({Key? key}) : super(key: key);

  @override
  _MyLearningPageState createState() => _MyLearningPageState();
}

class _MyLearningPageState extends State<MyLearningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("학습관리"),
      ),
    );
  }
}
