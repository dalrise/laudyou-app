import 'package:flutter/material.dart';

class MyLearnerPage extends StatefulWidget {
  static String routeName = "my_learner";

  const MyLearnerPage({Key? key}) : super(key: key);

  @override
  _MyLearnerPageState createState() => _MyLearnerPageState();
}

class _MyLearnerPageState extends State<MyLearnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("학습자 정보 관리"),
      ),
    );
  }
}
